package com.adjust.sdk;

import android.content.Context;
import android.net.Uri;

public class Adjust {
  private static AdjustInstance defaultInstance;
  
  public static void addSessionCallbackParameter(String paramString1, String paramString2) {
    getDefaultInstance().addSessionCallbackParameter(paramString1, paramString2);
  }
  
  public static void addSessionPartnerParameter(String paramString1, String paramString2) {
    getDefaultInstance().addSessionPartnerParameter(paramString1, paramString2);
  }
  
  public static void appWillOpenUrl(Uri paramUri) {
    getDefaultInstance().appWillOpenUrl(paramUri);
  }
  
  public static String getAdid() {
    return getDefaultInstance().getAdid();
  }
  
  public static String getAmazonAdId(Context paramContext) {
    return Util.getFireAdvertisingId(paramContext.getContentResolver());
  }
  
  public static AdjustAttribution getAttribution() {
    return getDefaultInstance().getAttribution();
  }
  
  public static AdjustInstance getDefaultInstance() {
    // Byte code:
    //   0: ldc com/adjust/sdk/Adjust
    //   2: monitorenter
    //   3: getstatic com/adjust/sdk/Adjust.defaultInstance : Lcom/adjust/sdk/AdjustInstance;
    //   6: ifnonnull -> 19
    //   9: new com/adjust/sdk/AdjustInstance
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: putstatic com/adjust/sdk/Adjust.defaultInstance : Lcom/adjust/sdk/AdjustInstance;
    //   19: getstatic com/adjust/sdk/Adjust.defaultInstance : Lcom/adjust/sdk/AdjustInstance;
    //   22: astore_0
    //   23: ldc com/adjust/sdk/Adjust
    //   25: monitorexit
    //   26: aload_0
    //   27: areturn
    //   28: astore_0
    //   29: ldc com/adjust/sdk/Adjust
    //   31: monitorexit
    //   32: aload_0
    //   33: athrow
    // Exception table:
    //   from	to	target	type
    //   3	19	28	finally
    //   19	23	28	finally
  }
  
  public static void getGoogleAdId(Context paramContext, OnDeviceIdsRead paramOnDeviceIdsRead) {
    Util.getGoogleAdId(paramContext, paramOnDeviceIdsRead);
  }
  
  public static boolean isEnabled() {
    return getDefaultInstance().isEnabled();
  }
  
  public static void onCreate(AdjustConfig paramAdjustConfig) {
    getDefaultInstance().onCreate(paramAdjustConfig);
  }
  
  public static void onPause() {
    getDefaultInstance().onPause();
  }
  
  public static void onResume() {
    getDefaultInstance().onResume();
  }
  
  public static void removeSessionCallbackParameter(String paramString) {
    getDefaultInstance().removeSessionCallbackParameter(paramString);
  }
  
  public static void removeSessionPartnerParameter(String paramString) {
    getDefaultInstance().removeSessionPartnerParameter(paramString);
  }
  
  public static void resetSessionCallbackParameters() {
    getDefaultInstance().resetSessionCallbackParameters();
  }
  
  public static void resetSessionPartnerParameters() {
    getDefaultInstance().resetSessionPartnerParameters();
  }
  
  public static void sendFirstPackages() {
    getDefaultInstance().sendFirstPackages();
  }
  
  public static void setEnabled(boolean paramBoolean) {
    getDefaultInstance().setEnabled(paramBoolean);
  }
  
  public static void setOfflineMode(boolean paramBoolean) {
    getDefaultInstance().setOfflineMode(paramBoolean);
  }
  
  public static void setPushToken(String paramString) {
    getDefaultInstance().setPushToken(paramString);
  }
  
  public static void setPushToken(String paramString, Context paramContext) {
    getDefaultInstance().setPushToken(paramString, paramContext);
  }
  
  public static void setReferrer(String paramString, Context paramContext) {
    getDefaultInstance().sendReferrer(paramString, paramContext);
  }
  
  public static void trackEvent(AdjustEvent paramAdjustEvent) {
    getDefaultInstance().trackEvent(paramAdjustEvent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\Adjust.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */