package com.ca.integration;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.location.Location;
import com.ca.mdo.CALog;
import com.ca.mdo.CAMobileDevOps;
import com.ca.mdo.SDK;
import java.util.HashSet;
import java.util.Map;

public class CaMDOIntegration {
  public static final String CAMAA_CRASH_OCCURRED = "crashOccured";
  
  public static final String CAMAA_CUSTOM = "custom";
  
  public static final String CAMAA_CUSTOMER_ID = "customerId";
  
  public static final String CAMAA_DOUBLE = "double";
  
  public static final String CAMAA_HEADER_COUNTRY = "ct";
  
  public static final String CAMAA_HEADER_ZIPCODE = "zp";
  
  public static final int CAMAA_SCREENSHOT_QUALITY_DEFAULT = -1;
  
  public static final int CAMAA_SCREENSHOT_QUALITY_HIGH = 30;
  
  public static final int CAMAA_SCREENSHOT_QUALITY_LOW = 15;
  
  public static final int CAMAA_SCREENSHOT_QUALITY_MEDIUM = 20;
  
  public static final String CAMAA_SSL_PINNINGMODE_CERTIFICATE = "certificate";
  
  public static final String CAMAA_SSL_PINNINGMODE_FINGERPRINT_SHA1SIGNATURE = "sha1signature";
  
  public static final String CAMAA_SSL_PINNINGMODE_NONE = "none";
  
  public static final String CAMAA_SSL_PINNINGMODE_PUBLICKEY = "pk";
  
  public static final String CAMAA_SSL_PINNINGMODE_PUBLICKEYHASH = "hash";
  
  public static final String CAMAA_STRING = "string";
  
  public static void addToApmHeader(String paramString) {
    SDK.getAgent().addToApmHeader(paramString);
  }
  
  public static void disableSDK() {
    try {
      SDK.disableSDKByAPI();
      return;
    } catch (Exception exception) {
      CALog.e("Exception :" + exception, exception);
      return;
    } 
  }
  
  public static void enableSDK() {
    try {
      SDK.enableSDKByAPI();
      return;
    } catch (Exception exception) {
      CALog.e("Exception :" + exception, exception);
      return;
    } 
  }
  
  public static void enterPrivateZone() {
    SDK.getAgent().enterPrivateZone();
  }
  
  public static void exitPrivateZone() {
    SDK.getAgent().exitPrivateZone();
  }
  
  public static Map<String, String> getAPMHeaders() {
    return SDK.getAgent().getAPMHeaders();
  }
  
  public static String getCustomerId() {
    return SDK.getAgent().getCustomerId();
  }
  
  public static String getDeviceId() {
    return SDK.getAgent().getDeviceId();
  }
  
  public static void ignoreView(String paramString) {
    SDK.getAgent().ignoreView(paramString);
  }
  
  public static void ignoreViews(HashSet<String> paramHashSet) {
    SDK.getAgent().ignoreViews(paramHashSet);
  }
  
  public static boolean isInPrivateZone() {
    return SDK.getAgent().isInPrivateZone();
  }
  
  public static boolean isSDKEnabled() {
    try {
      String str = SDK.getSDKEnabledByAPI();
      boolean bool = SDK.isSDKEnabledByPolicy;
      if (str != null) {
        bool = str.equals("TRUE");
        return bool;
      } 
      return bool;
    } catch (Exception exception) {
      CALog.e("Exception :" + exception, exception);
      return true;
    } 
  }
  
  public static boolean isScreenshotPolicyEnabled() {
    return SDK.getAgent().isScreenshotPolicyEnabled();
  }
  
  public static void logNetworkEvent(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    SDK.getAgent().logNetworkEvent(paramString, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void logNetworkEvent(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CaMDOCallback paramCaMDOCallback) {
    SDK.getAgent().logNetworkEvent(paramString, paramInt1, paramInt2, paramInt3, paramInt4, paramCaMDOCallback);
  }
  
  public static void logNumericMetric(String paramString, Double paramDouble, Map<String, String> paramMap, CaMDOCallback paramCaMDOCallback) {
    SDK.getAgent().logNumericMetric(paramString, paramDouble, paramMap, paramCaMDOCallback);
  }
  
  public static void logTextMetric(String paramString1, String paramString2, Map<String, String> paramMap, CaMDOCallback paramCaMDOCallback) {
    SDK.getAgent().logTextMetric(paramString1, paramString2, paramMap, paramCaMDOCallback);
  }
  
  public static void onPauseOfFragment(String paramString, Activity paramActivity) {
    SDK.getAgent().onPauseOffragment(paramString, paramActivity);
  }
  
  public static void onResumeOfFragment(String paramString, Activity paramActivity) {
    SDK.getAgent().onResumeOffragment(paramString, paramActivity);
  }
  
  public static void registerAppFeedBack(BroadcastReceiver paramBroadcastReceiver) {
    SDK.getAgent().registerAppFeedBackOnIntegration(paramBroadcastReceiver);
  }
  
  public static void sendScreenShot(String paramString, int paramInt, CaMDOCallback paramCaMDOCallback) {
    SDK.getAgent().takeScreenshotOnIntegration(paramString, paramInt, paramCaMDOCallback);
  }
  
  public static void setCustomerFeedback(String paramString) {
    SDK.getAgent().setCustomerFeedbackOnIntegration(paramString);
  }
  
  public static void setCustomerId(String paramString) {
    SDK.getAgent().setCustomerId(paramString);
  }
  
  public static void setCustomerLocation(Location paramLocation) {
    SDK.getAgent().setCustomerLocationOnIntegration(paramLocation);
  }
  
  public static void setCustomerLocation(String paramString1, String paramString2) {
    SDK.getAgent().setCustomerLocationOnIntegration(paramString1, paramString2);
  }
  
  public static void setSSLPinningMode(Application paramApplication, String paramString, byte[] paramArrayOfbyte) {
    CAMobileDevOps.setSSLPinning(paramString, paramArrayOfbyte);
    SDK.isSslMode = true;
  }
  
  public static void setSessionAttribute(String paramString1, String paramString2, String paramString3) {
    SDK.getAgent().setSessionAttributeOnIntegration(paramString1, paramString2, paramString3);
  }
  
  public static void startApplicationTransaction(String paramString, CaMDOCallback paramCaMDOCallback) {
    SDK.getAgent().startApplicationTransactionOnIntegration(paramString, paramCaMDOCallback);
  }
  
  public static void startApplicationTransaction(String paramString1, String paramString2, CaMDOCallback paramCaMDOCallback) {
    SDK.getAgent().startApplicationTransactionOnIntegration(paramString1, paramString2, paramCaMDOCallback);
  }
  
  public static void startNewSession() {
    SDK.getAgent().startNewSession();
  }
  
  public static void stopApplicationTransaction(String paramString, CaMDOCallback paramCaMDOCallback) {
    SDK.getAgent().stopApplicationTransactionOnIntegration(paramString, paramCaMDOCallback);
  }
  
  public static void stopApplicationTransaction(String paramString1, String paramString2, CaMDOCallback paramCaMDOCallback) {
    SDK.getAgent().stopApplicationTransactionOnIntegration(paramString1, paramString2, paramCaMDOCallback);
  }
  
  public static void stopCurrentAndStartNewSession() {
    SDK.getAgent().stopCurrentAndStartNewSession();
  }
  
  public static void stopCurrentSession() {
    SDK.getAgent().stopCurrentSession();
  }
  
  public static void uploadEvents(CaMDOCallback paramCaMDOCallback) {
    SDK.getAgent().uploadEvents(paramCaMDOCallback);
  }
  
  public static void viewLoaded(String paramString, int paramInt) {
    SDK.getAgent().viewLoaded(paramString, paramInt);
  }
  
  public static void viewLoaded(String paramString, int paramInt, CaMDOCallback paramCaMDOCallback) {
    SDK.getAgent().viewLoaded(paramString, paramInt, paramCaMDOCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\integration\CaMDOIntegration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */