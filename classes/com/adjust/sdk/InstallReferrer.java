package com.adjust.sdk;

import android.content.Context;
import avp;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class InstallReferrer implements InvocationHandler {
  public static final String PACKAGE_BASE_NAME = "com.android.installreferrer.";
  
  private static final int STATUS_DEVELOPER_ERROR = 3;
  
  private static final int STATUS_FEATURE_NOT_SUPPORTED = 2;
  
  private static final int STATUS_OK = 0;
  
  private static final int STATUS_SERVICE_DISCONNECTED = -1;
  
  private static final int STATUS_SERVICE_UNAVAILABLE = 1;
  
  private WeakReference<IActivityHandler> activityHandlerWeakRef;
  
  private Context context;
  
  private Object flagLock;
  
  private boolean hasInstallReferrerBeenRead;
  
  private ILogger logger = AdjustFactory.getLogger();
  
  private Object referrerClient;
  
  private int retries;
  
  private TimerOnce retryTimer;
  
  private int retryWaitTime = 3000;
  
  public InstallReferrer(Context paramContext, IActivityHandler paramIActivityHandler) {
    this.context = paramContext;
    this.flagLock = new Object();
    this.hasInstallReferrerBeenRead = false;
    this.retries = 0;
    this.retryTimer = new TimerOnce((Runnable)new avp(this), "InstallReferrer");
    this.activityHandlerWeakRef = new WeakReference<IActivityHandler>(paramIActivityHandler);
    startConnection();
  }
  
  private void closeReferrerClient() {
    if (this.referrerClient == null)
      return; 
    try {
      Reflection.invokeInstanceMethod(this.referrerClient, "endConnection", null, new Object[0]);
    } catch (Exception exception) {
      this.logger.error("closeReferrerClient error (%s)", new Object[] { exception.getMessage() });
    } 
    this.referrerClient = null;
  }
  
  private long getInstallBeginTimestampSeconds(Object paramObject) {
    if (paramObject == null)
      return -1L; 
    try {
      return ((Long)Reflection.invokeInstanceMethod(paramObject, "getInstallBeginTimestampSeconds", null, new Object[0])).longValue();
    } catch (Exception exception) {
      this.logger.error("getInstallBeginTimestampSeconds error (%s)", new Object[] { exception.getMessage() });
      return -1L;
    } 
  }
  
  private Object getInstallReferrer() {
    if (this.referrerClient == null)
      return null; 
    try {
      return Reflection.invokeInstanceMethod(this.referrerClient, "getInstallReferrer", null, new Object[0]);
    } catch (Exception exception) {
      this.logger.error("getInstallReferrer error (%s)", new Object[] { exception.getMessage() });
      return null;
    } 
  }
  
  private long getReferrerClickTimestampSeconds(Object paramObject) {
    if (paramObject == null)
      return -1L; 
    try {
      return ((Long)Reflection.invokeInstanceMethod(paramObject, "getReferrerClickTimestampSeconds", null, new Object[0])).longValue();
    } catch (Exception exception) {
      this.logger.error("getReferrerClickTimestampSeconds error (%s)", new Object[] { exception.getMessage() });
      return -1L;
    } 
  }
  
  private String getStringInstallReferrer(Object paramObject) {
    if (paramObject == null)
      return null; 
    try {
      return (String)Reflection.invokeInstanceMethod(paramObject, "getInstallReferrer", null, new Object[0]);
    } catch (Exception exception) {
      this.logger.error("getStringInstallReferrer error (%s)", new Object[] { exception.getMessage() });
      return null;
    } 
  }
  
  private void retry() {
    synchronized (this.flagLock) {
      if (this.hasInstallReferrerBeenRead) {
        this.logger.debug("Install referrer has already been read", new Object[0]);
        return;
      } 
      this.retries++;
      if (this.retries > 2) {
        this.logger.debug("Limit number of retry for install referrer surpassed", new Object[0]);
        return;
      } 
    } 
    long l = this.retryTimer.getFireIn();
    if (l > 0L) {
      this.logger.debug("Already waiting to retry to read install referrer in %d milliseconds", new Object[] { Long.valueOf(l) });
      return;
    } 
    this.retryTimer.startIn(this.retryWaitTime);
  }
  
  public Object createInstallReferrerClient(Context paramContext) {
    if (paramContext == null)
      return null; 
    try {
      return Reflection.invokeInstanceMethod(Reflection.invokeStaticMethod("com.android.installreferrer.api.InstallReferrerClient", "newBuilder", new Class[] { Context.class }, new Object[] { paramContext }), "build", null, new Object[0]);
    } catch (Exception exception) {
      this.logger.warn("Couldn't create instance of referrer client (%s)", new Object[] { exception.getMessage() });
      return null;
    } 
  }
  
  public Object createProxyInstallReferrerStateListener(Class paramClass) {
    return (paramClass == null) ? null : Proxy.newProxyInstance(paramClass.getClassLoader(), new Class[] { paramClass }, this);
  }
  
  public Class getInstallReferrerStateListenerClass() {
    try {
      return Class.forName("com.android.installreferrer.api.InstallReferrerStateListener");
    } catch (Exception exception) {
      this.logger.error("getInstallReferrerStateListenerClass error (%s)", new Object[] { exception.getMessage() });
      return null;
    } 
  }
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject) {
    try {
      paramObject = paramMethod.getName();
      this.logger.debug("InstallReferrer invoke method name: %s", new Object[] { paramObject });
      int j = paramArrayOfObject.length;
      int i;
      for (i = 0; i < j; i++) {
        Object object = paramArrayOfObject[i];
        this.logger.debug("InstallReferrer invoke arg: %s", new Object[] { object });
      } 
      if (paramObject.equals("onInstallReferrerSetupFinished")) {
        onInstallReferrerSetupFinishedInt(((Integer)paramArrayOfObject[0]).intValue());
      } else if (paramObject.equals("onInstallReferrerServiceDisconnected")) {
        this.logger.debug("InstallReferrer onInstallReferrerServiceDisconnected", new Object[0]);
      } 
    } catch (Exception exception) {
      this.logger.error("InstallReferrer invoke error (%s)", new Object[] { exception.getMessage() });
    } 
    return null;
  }
  
  public void onInstallReferrerSetupFinishedInt(int paramInt) {
    switch (paramInt) {
      default:
        this.logger.debug("Unexpected response code of install referrer response: %d", new Object[] { Integer.valueOf(paramInt) });
        closeReferrerClient();
        return;
      case 0:
        try {
          null = getInstallReferrer();
          String str = getStringInstallReferrer(null);
          long l1 = getReferrerClickTimestampSeconds(null);
          long l2 = getInstallBeginTimestampSeconds(null);
          this.logger.debug("installReferrer: %s, clickTime: %d, installBeginTime: %d", new Object[] { str, Long.valueOf(l1), Long.valueOf(l2) });
          null = this.activityHandlerWeakRef.get();
          if (null != null)
            null.sendInstallReferrer(l1, l2, str); 
          synchronized (this.flagLock) {
            this.hasInstallReferrerBeenRead = true;
            closeReferrerClient();
            return;
          } 
        } catch (Exception exception) {
          this.logger.debug("Couldn't get install referrer from client (%s). Retrying ...", new Object[] { exception.getMessage() });
          retry();
        } 
        closeReferrerClient();
        return;
      case 2:
        this.logger.debug("Install referrer not available on the current Play Store app.", new Object[0]);
        closeReferrerClient();
        return;
      case 1:
        this.logger.debug("Could not initiate connection to the Install Referrer service. Retrying ...", new Object[0]);
        retry();
        closeReferrerClient();
        return;
      case 3:
        this.logger.debug("Install referrer general errors caused by incorrect usage. Retrying ...", new Object[0]);
        retry();
        closeReferrerClient();
        return;
      case -1:
        break;
    } 
    this.logger.debug("Play Store service is not connected now. Retrying ...", new Object[0]);
    retry();
    closeReferrerClient();
  }
  
  public void startConnection() {
    closeReferrerClient();
    synchronized (this.flagLock) {
      if (this.hasInstallReferrerBeenRead) {
        this.logger.debug("Install referrer has already been read", new Object[0]);
        return;
      } 
      this.referrerClient = createInstallReferrerClient(this.context);
      null = getInstallReferrerStateListenerClass();
      startConnection((Class)null, createProxyInstallReferrerStateListener((Class)null));
      return;
    } 
  }
  
  public void startConnection(Class paramClass, Object paramObject) {
    if (this.referrerClient != null && paramClass != null && paramObject != null)
      try {
        Reflection.invokeInstanceMethod(this.referrerClient, "startConnection", new Class[] { paramClass }, new Object[] { paramObject });
        return;
      } catch (Exception exception) {
        this.logger.error("startConnection error (%s)", new Object[] { exception.getMessage() });
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\InstallReferrer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */