package com.adjust.sdk;

import android.content.Context;
import com.ca.android.app.CaMDOHTTPClient;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

public class AdjustFactory {
  private static IActivityHandler activityHandler;
  
  private static IAttributionHandler attributionHandler;
  
  private static HttpsURLConnection httpsURLConnection;
  
  private static ILogger logger;
  
  private static long maxDelayStart;
  
  private static IPackageHandler packageHandler = null;
  
  private static BackoffStrategy packageHandlerBackoffStrategy;
  
  private static IRequestHandler requestHandler = null;
  
  private static BackoffStrategy sdkClickBackoffStrategy;
  
  private static ISdkClickHandler sdkClickHandler;
  
  private static long sessionInterval;
  
  private static long subsessionInterval;
  
  private static long timerInterval;
  
  private static long timerStart;
  
  static {
    attributionHandler = null;
    activityHandler = null;
    logger = null;
    httpsURLConnection = null;
    sdkClickHandler = null;
    timerInterval = -1L;
    timerStart = -1L;
    sessionInterval = -1L;
    subsessionInterval = -1L;
    sdkClickBackoffStrategy = null;
    packageHandlerBackoffStrategy = null;
    maxDelayStart = -1L;
  }
  
  public static IActivityHandler getActivityHandler(AdjustConfig paramAdjustConfig) {
    if (activityHandler == null)
      return ActivityHandler.getInstance(paramAdjustConfig); 
    activityHandler.init(paramAdjustConfig);
    return activityHandler;
  }
  
  public static IAttributionHandler getAttributionHandler(IActivityHandler paramIActivityHandler, ActivityPackage paramActivityPackage, boolean paramBoolean) {
    if (attributionHandler == null)
      return new AttributionHandler(paramIActivityHandler, paramActivityPackage, paramBoolean); 
    attributionHandler.init(paramIActivityHandler, paramActivityPackage, paramBoolean);
    return attributionHandler;
  }
  
  public static HttpsURLConnection getHttpsURLConnection(URL paramURL) {
    return (httpsURLConnection == null) ? (HttpsURLConnection)CaMDOHTTPClient.openConnection(paramURL) : httpsURLConnection;
  }
  
  public static ILogger getLogger() {
    if (logger == null)
      logger = new Logger(); 
    return logger;
  }
  
  public static long getMaxDelayStart() {
    return (maxDelayStart == -1L) ? 10000L : maxDelayStart;
  }
  
  public static IPackageHandler getPackageHandler(IActivityHandler paramIActivityHandler, Context paramContext, boolean paramBoolean) {
    if (packageHandler == null)
      return new PackageHandler(paramIActivityHandler, paramContext, paramBoolean); 
    packageHandler.init(paramIActivityHandler, paramContext, paramBoolean);
    return packageHandler;
  }
  
  public static BackoffStrategy getPackageHandlerBackoffStrategy() {
    return (packageHandlerBackoffStrategy == null) ? BackoffStrategy.LONG_WAIT : packageHandlerBackoffStrategy;
  }
  
  public static IRequestHandler getRequestHandler(IPackageHandler paramIPackageHandler) {
    if (requestHandler == null)
      return new RequestHandler(paramIPackageHandler); 
    requestHandler.init(paramIPackageHandler);
    return requestHandler;
  }
  
  public static BackoffStrategy getSdkClickBackoffStrategy() {
    return (sdkClickBackoffStrategy == null) ? BackoffStrategy.SHORT_WAIT : sdkClickBackoffStrategy;
  }
  
  public static ISdkClickHandler getSdkClickHandler(IActivityHandler paramIActivityHandler, boolean paramBoolean) {
    if (sdkClickHandler == null)
      return new SdkClickHandler(paramIActivityHandler, paramBoolean); 
    sdkClickHandler.init(paramIActivityHandler, paramBoolean);
    return sdkClickHandler;
  }
  
  public static long getSessionInterval() {
    return (sessionInterval == -1L) ? 1800000L : sessionInterval;
  }
  
  public static long getSubsessionInterval() {
    return (subsessionInterval == -1L) ? 1000L : subsessionInterval;
  }
  
  public static long getTimerInterval() {
    return (timerInterval == -1L) ? 60000L : timerInterval;
  }
  
  public static long getTimerStart() {
    return (timerStart == -1L) ? 60000L : timerStart;
  }
  
  public static void setActivityHandler(IActivityHandler paramIActivityHandler) {
    activityHandler = paramIActivityHandler;
  }
  
  public static void setAttributionHandler(IAttributionHandler paramIAttributionHandler) {
    attributionHandler = paramIAttributionHandler;
  }
  
  public static void setHttpsURLConnection(HttpsURLConnection paramHttpsURLConnection) {
    httpsURLConnection = paramHttpsURLConnection;
  }
  
  public static void setLogger(ILogger paramILogger) {
    logger = paramILogger;
  }
  
  public static void setPackageHandler(IPackageHandler paramIPackageHandler) {
    packageHandler = paramIPackageHandler;
  }
  
  public static void setPackageHandlerBackoffStrategy(BackoffStrategy paramBackoffStrategy) {
    packageHandlerBackoffStrategy = paramBackoffStrategy;
  }
  
  public static void setRequestHandler(IRequestHandler paramIRequestHandler) {
    requestHandler = paramIRequestHandler;
  }
  
  public static void setSdkClickBackoffStrategy(BackoffStrategy paramBackoffStrategy) {
    sdkClickBackoffStrategy = paramBackoffStrategy;
  }
  
  public static void setSdkClickHandler(ISdkClickHandler paramISdkClickHandler) {
    sdkClickHandler = paramISdkClickHandler;
  }
  
  public static void setSessionInterval(long paramLong) {
    sessionInterval = paramLong;
  }
  
  public static void setSubsessionInterval(long paramLong) {
    subsessionInterval = paramLong;
  }
  
  public static void setTimerInterval(long paramLong) {
    timerInterval = paramLong;
  }
  
  public static void setTimerStart(long paramLong) {
    timerStart = paramLong;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\AdjustFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */