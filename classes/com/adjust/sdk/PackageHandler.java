package com.adjust.sdk;

import android.content.Context;
import avq;
import avs;
import avt;
import avu;
import avv;
import avw;
import avx;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class PackageHandler implements IPackageHandler {
  private static final String PACKAGE_QUEUE_FILENAME = "AdjustIoPackageQueue";
  
  private static final String PACKAGE_QUEUE_NAME = "Package queue";
  
  private WeakReference<IActivityHandler> activityHandlerWeakRef;
  
  private BackoffStrategy backoffStrategy = AdjustFactory.getPackageHandlerBackoffStrategy();
  
  private Context context;
  
  private AtomicBoolean isSending;
  
  private ILogger logger = AdjustFactory.getLogger();
  
  private List<ActivityPackage> packageQueue;
  
  private boolean paused;
  
  private IRequestHandler requestHandler;
  
  private CustomScheduledExecutor scheduledExecutor = new CustomScheduledExecutor("PackageHandler", false);
  
  public PackageHandler(IActivityHandler paramIActivityHandler, Context paramContext, boolean paramBoolean) {
    init(paramIActivityHandler, paramContext, paramBoolean);
    this.scheduledExecutor.submit((Runnable)new avs(this));
  }
  
  private void addI(ActivityPackage paramActivityPackage) {
    this.packageQueue.add(paramActivityPackage);
    this.logger.debug("Added package %d (%s)", new Object[] { Integer.valueOf(this.packageQueue.size()), paramActivityPackage });
    this.logger.verbose("%s", new Object[] { paramActivityPackage.getExtendedString() });
    writePackageQueueI();
  }
  
  public static Boolean deletePackageQueue(Context paramContext) {
    return Boolean.valueOf(paramContext.deleteFile("AdjustIoPackageQueue"));
  }
  
  private void initI() {
    this.requestHandler = AdjustFactory.getRequestHandler(this);
    this.isSending = new AtomicBoolean();
    readPackageQueueI();
  }
  
  private void readPackageQueueI() {
    try {
      this.packageQueue = Util.<List<ActivityPackage>>readObject(this.context, "AdjustIoPackageQueue", "Package queue", (Class)List.class);
      if (this.packageQueue != null) {
        this.logger.debug("Package handler read %d packages", new Object[] { Integer.valueOf(this.packageQueue.size()) });
        return;
      } 
    } catch (Exception exception) {
      this.logger.error("Failed to read %s file (%s)", new Object[] { "Package queue", exception.getMessage() });
      this.packageQueue = null;
      if (this.packageQueue != null) {
        this.logger.debug("Package handler read %d packages", new Object[] { Integer.valueOf(this.packageQueue.size()) });
        return;
      } 
    } 
    this.packageQueue = new ArrayList<ActivityPackage>();
  }
  
  private void sendFirstI() {
    if (this.packageQueue.isEmpty())
      return; 
    if (this.paused) {
      this.logger.debug("Package handler is paused", new Object[0]);
      return;
    } 
    if (this.isSending.getAndSet(true)) {
      this.logger.verbose("Package handler is already sending", new Object[0]);
      return;
    } 
    ActivityPackage activityPackage = this.packageQueue.get(0);
    this.requestHandler.sendPackage(activityPackage, this.packageQueue.size() - 1);
  }
  
  private void sendNextI() {
    this.packageQueue.remove(0);
    writePackageQueueI();
    this.isSending.set(false);
    this.logger.verbose("Package handler can send", new Object[0]);
    sendFirstI();
  }
  
  private void writePackageQueueI() {
    Util.writeObject(this.packageQueue, this.context, "AdjustIoPackageQueue", "Package queue");
    this.logger.debug("Package handler wrote %d packages", new Object[] { Integer.valueOf(this.packageQueue.size()) });
  }
  
  public void addPackage(ActivityPackage paramActivityPackage) {
    this.scheduledExecutor.submit((Runnable)new avt(this, paramActivityPackage));
  }
  
  public void closeFirstPackage(ResponseData paramResponseData, ActivityPackage paramActivityPackage) {
    paramResponseData.willRetry = true;
    IActivityHandler iActivityHandler = this.activityHandlerWeakRef.get();
    if (iActivityHandler != null)
      iActivityHandler.finishedTrackingActivity(paramResponseData); 
    avw avw = new avw(this);
    if (paramActivityPackage == null) {
      avw.run();
      return;
    } 
    int i = paramActivityPackage.increaseRetries();
    long l = Util.getWaitingTime(i, this.backoffStrategy);
    double d = l / 1000.0D;
    String str = Util.SecondsDisplayFormat.format(d);
    this.logger.verbose("Waiting for %s seconds before retrying the %d time", new Object[] { str, Integer.valueOf(i) });
    this.scheduledExecutor.schedule((Runnable)avw, l, TimeUnit.MILLISECONDS);
  }
  
  public void init(IActivityHandler paramIActivityHandler, Context paramContext, boolean paramBoolean) {
    this.activityHandlerWeakRef = new WeakReference<IActivityHandler>(paramIActivityHandler);
    this.context = paramContext;
    if (!paramBoolean) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    } 
    this.paused = paramBoolean;
  }
  
  public void pauseSending() {
    this.paused = true;
  }
  
  public void resumeSending() {
    this.paused = false;
  }
  
  public void sendFirstPackage() {
    this.scheduledExecutor.submit((Runnable)new avu(this));
  }
  
  public void sendNextPackage(ResponseData paramResponseData) {
    this.scheduledExecutor.submit((Runnable)new avv(this));
    IActivityHandler iActivityHandler = this.activityHandlerWeakRef.get();
    if (iActivityHandler != null)
      iActivityHandler.finishedTrackingActivity(paramResponseData); 
  }
  
  public void teardown(boolean paramBoolean) {
    this.logger.verbose("PackageHandler teardown", new Object[0]);
    if (this.scheduledExecutor != null)
      try {
        this.scheduledExecutor.shutdownNow();
      } catch (SecurityException securityException) {} 
    if (this.activityHandlerWeakRef != null)
      this.activityHandlerWeakRef.clear(); 
    if (this.requestHandler != null)
      this.requestHandler.teardown(); 
    if (this.packageQueue != null)
      this.packageQueue.clear(); 
    if (paramBoolean && this.context != null)
      deletePackageQueue(this.context); 
    this.scheduledExecutor = null;
    this.requestHandler = null;
    this.activityHandlerWeakRef = null;
    this.packageQueue = null;
    this.isSending = null;
    this.context = null;
    this.logger = null;
    this.backoffStrategy = null;
  }
  
  public void updatePackages(SessionParameters paramSessionParameters) {
    if (paramSessionParameters != null) {
      paramSessionParameters = paramSessionParameters.deepCopy();
    } else {
      paramSessionParameters = null;
    } 
    this.scheduledExecutor.submit((Runnable)new avx(this, paramSessionParameters));
  }
  
  public void updatePackagesI(SessionParameters paramSessionParameters) {
    if (paramSessionParameters == null)
      return; 
    this.logger.debug("Updating package handler queue", new Object[0]);
    this.logger.verbose("Session callback parameters: %s", new Object[] { paramSessionParameters.callbackParameters });
    this.logger.verbose("Session partner parameters: %s", new Object[] { paramSessionParameters.partnerParameters });
    for (ActivityPackage activityPackage : this.packageQueue) {
      Map<String, String> map = activityPackage.getParameters();
      avq.a(map, "callback_params", Util.mergeParameters(paramSessionParameters.callbackParameters, activityPackage.getCallbackParameters(), "Callback"));
      avq.a(map, "partner_params", Util.mergeParameters(paramSessionParameters.partnerParameters, activityPackage.getPartnerParameters(), "Partner"));
    } 
    writePackageQueueI();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\PackageHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */