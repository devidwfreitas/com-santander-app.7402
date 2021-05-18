package com.adjust.sdk;

import android.content.Context;
import android.net.Uri;
import avo;

public interface IActivityHandler {
  void addSessionCallbackParameter(String paramString1, String paramString2);
  
  void addSessionPartnerParameter(String paramString1, String paramString2);
  
  void finishedTrackingActivity(ResponseData paramResponseData);
  
  ActivityState getActivityState();
  
  String getAdid();
  
  AdjustConfig getAdjustConfig();
  
  AdjustAttribution getAttribution();
  
  Context getContext();
  
  avo getDeviceInfo();
  
  SessionParameters getSessionParameters();
  
  void init(AdjustConfig paramAdjustConfig);
  
  boolean isEnabled();
  
  void launchAttributionResponseTasks(AttributionResponseData paramAttributionResponseData);
  
  void launchEventResponseTasks(EventResponseData paramEventResponseData);
  
  void launchSdkClickResponseTasks(SdkClickResponseData paramSdkClickResponseData);
  
  void launchSessionResponseTasks(SessionResponseData paramSessionResponseData);
  
  void onPause();
  
  void onResume();
  
  void readOpenUrl(Uri paramUri, long paramLong);
  
  void removeSessionCallbackParameter(String paramString);
  
  void removeSessionPartnerParameter(String paramString);
  
  void resetSessionCallbackParameters();
  
  void resetSessionPartnerParameters();
  
  void sendFirstPackages();
  
  void sendInstallReferrer(long paramLong1, long paramLong2, String paramString);
  
  void sendReftagReferrer();
  
  void setAskingAttribution(boolean paramBoolean);
  
  void setEnabled(boolean paramBoolean);
  
  void setOfflineMode(boolean paramBoolean);
  
  void setPushToken(String paramString, boolean paramBoolean);
  
  void teardown(boolean paramBoolean);
  
  void trackEvent(AdjustEvent paramAdjustEvent);
  
  boolean updateAttributionI(AdjustAttribution paramAdjustAttribution);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\IActivityHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */