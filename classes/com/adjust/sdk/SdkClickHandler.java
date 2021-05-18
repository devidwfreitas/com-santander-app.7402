package com.adjust.sdk;

import awa;
import awb;
import awc;
import awd;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class SdkClickHandler implements ISdkClickHandler {
  private static final double MILLISECONDS_TO_SECONDS_DIVISOR = 1000.0D;
  
  private static final String SCHEDULED_EXECUTOR_SOURCE = "SdkClickHandler";
  
  private static final String SOURCE_INSTALL_REFERRER = "install_referrer";
  
  private static final String SOURCE_REFTAG = "reftag";
  
  private WeakReference<IActivityHandler> activityHandlerWeakRef;
  
  private BackoffStrategy backoffStrategy;
  
  private ILogger logger;
  
  private List<ActivityPackage> packageQueue;
  
  private boolean paused;
  
  private CustomScheduledExecutor scheduledExecutor;
  
  public SdkClickHandler(IActivityHandler paramIActivityHandler, boolean paramBoolean) {
    init(paramIActivityHandler, paramBoolean);
    this.logger = AdjustFactory.getLogger();
    this.backoffStrategy = AdjustFactory.getSdkClickBackoffStrategy();
    this.scheduledExecutor = new CustomScheduledExecutor("SdkClickHandler", false);
  }
  
  private void logErrorMessageI(ActivityPackage paramActivityPackage, String paramString, Throwable paramThrowable) {
    String str = String.format("%s. (%s)", new Object[] { paramActivityPackage.getFailureMessage(), Util.getReasonString(paramString, paramThrowable) });
    this.logger.error(str, new Object[0]);
  }
  
  private void retrySendingI(ActivityPackage paramActivityPackage) {
    int i = paramActivityPackage.increaseRetries();
    this.logger.error("Retrying sdk_click package for the %d time", new Object[] { Integer.valueOf(i) });
    sendSdkClick(paramActivityPackage);
  }
  
  private void sendNextSdkClick() {
    this.scheduledExecutor.submit((Runnable)new awc(this));
  }
  
  private void sendNextSdkClickI() {
    if (!this.paused && !this.packageQueue.isEmpty()) {
      ActivityPackage activityPackage = this.packageQueue.remove(0);
      int i = activityPackage.getRetries();
      awd awd = new awd(this, activityPackage);
      if (i <= 0) {
        awd.run();
        return;
      } 
      long l = Util.getWaitingTime(i, this.backoffStrategy);
      double d = l / 1000.0D;
      String str = Util.SecondsDisplayFormat.format(d);
      this.logger.verbose("Waiting for %s seconds before retrying sdk_click for the %d time", new Object[] { str, Integer.valueOf(i) });
      this.scheduledExecutor.schedule((Runnable)awd, l, TimeUnit.MILLISECONDS);
      return;
    } 
  }
  
  private void sendSdkClickI(ActivityPackage paramActivityPackage) {
    boolean bool;
    long l = -1L;
    IActivityHandler iActivityHandler = this.activityHandlerWeakRef.get();
    String str1 = paramActivityPackage.getParameters().get("source");
    if (str1 != null && str1.equals("reftag")) {
      bool = true;
    } else {
      bool = false;
    } 
    String str2 = paramActivityPackage.getParameters().get("raw_referrer");
    if (!bool || (new SharedPreferencesManager(iActivityHandler.getContext())).getRawReferrer(str2, paramActivityPackage.getClickTimeInMilliseconds()) != null) {
      boolean bool1;
      long l1;
      if (str1 != null && str1.equals("install_referrer")) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (bool1) {
        l1 = paramActivityPackage.getClickTimeInSeconds();
        l = paramActivityPackage.getInstallBeginTimeInSeconds();
        str1 = paramActivityPackage.getParameters().get("referrer");
      } else {
        str1 = null;
        l1 = -1L;
      } 
      String str = "https://app.adjust.com" + paramActivityPackage.getPath();
      try {
        SdkClickResponseData sdkClickResponseData = (SdkClickResponseData)UtilNetworking.createPOSTHttpsURLConnection(str, paramActivityPackage, this.packageQueue.size() - 1);
        if (sdkClickResponseData.jsonResponse == null) {
          retrySendingI(paramActivityPackage);
          return;
        } 
        if (iActivityHandler != null) {
          if (bool)
            (new SharedPreferencesManager(iActivityHandler.getContext())).removeRawReferrer(str2, paramActivityPackage.getClickTimeInMilliseconds()); 
          if (bool1) {
            sdkClickResponseData.clickTime = l1;
            sdkClickResponseData.installBegin = l;
            sdkClickResponseData.installReferrer = str1;
            sdkClickResponseData.isInstallReferrer = true;
          } 
          iActivityHandler.finishedTrackingActivity(sdkClickResponseData);
          return;
        } 
        return;
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        logErrorMessageI(paramActivityPackage, "Sdk_click failed to encode parameters", unsupportedEncodingException);
        return;
      } catch (SocketTimeoutException socketTimeoutException) {
        logErrorMessageI(paramActivityPackage, "Sdk_click request timed out. Will retry later", socketTimeoutException);
        retrySendingI(paramActivityPackage);
        return;
      } catch (IOException iOException) {
        logErrorMessageI(paramActivityPackage, "Sdk_click request failed. Will retry later", iOException);
        retrySendingI(paramActivityPackage);
        return;
      } catch (Throwable throwable) {
        logErrorMessageI(paramActivityPackage, "Sdk_click runtime exception", throwable);
        return;
      } 
    } 
  }
  
  public void init(IActivityHandler paramIActivityHandler, boolean paramBoolean) {
    if (!paramBoolean) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    } 
    this.paused = paramBoolean;
    this.packageQueue = new ArrayList<ActivityPackage>();
    this.activityHandlerWeakRef = new WeakReference<IActivityHandler>(paramIActivityHandler);
  }
  
  public void pauseSending() {
    this.paused = true;
  }
  
  public void resumeSending() {
    this.paused = false;
    sendNextSdkClick();
  }
  
  public void sendReftagReferrers() {
    this.scheduledExecutor.submit((Runnable)new awb(this));
  }
  
  public void sendSdkClick(ActivityPackage paramActivityPackage) {
    this.scheduledExecutor.submit((Runnable)new awa(this, paramActivityPackage));
  }
  
  public void teardown() {
    this.logger.verbose("SdkClickHandler teardown", new Object[0]);
    if (this.scheduledExecutor != null)
      try {
        this.scheduledExecutor.shutdownNow();
      } catch (SecurityException securityException) {} 
    if (this.packageQueue != null)
      this.packageQueue.clear(); 
    if (this.activityHandlerWeakRef != null)
      this.activityHandlerWeakRef.clear(); 
    this.logger = null;
    this.packageQueue = null;
    this.backoffStrategy = null;
    this.scheduledExecutor = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\SdkClickHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */