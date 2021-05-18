package br.com.santander.msgsdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.ColorRes;
import br.com.santander.msgsdk.configPanel.model.Category;
import br.com.santander.msgsdk.domain.NotificationData;
import br.com.santander.msgsdk.request.ConnectorEnvironment;
import br.com.santander.msgsdk.request.RequestProvider;
import ie;

public interface MSG extends RequestProvider {
  public static final String MSG_NOTI_DEL = "msg_noti_del";
  
  public static final String MSG_NOTI_ID = "msg_noti_id";
  
  public static final String MSG_NOTI_INTENT_EXTRA = "msg_noti_intent_extra";
  
  public static final String MSG_NOTI_INTENT_TYPE = "msg_noti_intent_type";
  
  public static final String MSG_NOTI_STIMULUM_ID = "msg_noti_stimulum_id";
  
  public static final String MSG_PUSH_ID = "msg_push_id";
  
  public static final String MSG_PUSH_UUID = "msg_push_uuid";
  
  boolean areNotificationsEnabled();
  
  NotificationData fromBundle(Bundle paramBundle);
  
  NotificationData fromIntent(Intent paramIntent);
  
  Context getContext();
  
  ie getHubConnector();
  
  int getToolbarColor();
  
  Tracking getTracking();
  
  int getUnreadNotificationsNumber(Context paramContext);
  
  void init(Context paramContext, ie paramie, String paramString, boolean paramBoolean);
  
  void init(Context paramContext, ie paramie, String paramString, boolean paramBoolean1, boolean paramBoolean2);
  
  void initConfigPanel(Activity paramActivity);
  
  void initNotifications(Activity paramActivity);
  
  void initOffline(Context paramContext, ie paramie, boolean paramBoolean);
  
  boolean isPlayServiceSuccess();
  
  void offlineMessagesArch(MSGSDK$CallbackOfflineMessage paramMSGSDK$CallbackOfflineMessage);
  
  void requestConfigPanel(String paramString, MSGSDK$CallbackRequestConfigPanel paramMSGSDK$CallbackRequestConfigPanel);
  
  void requestConfigPanelUpdate(String paramString, Category paramCategory, MSGSDK$CallbackRequestConfigPanelUpdate paramMSGSDK$CallbackRequestConfigPanelUpdate);
  
  void requestNotifications(String paramString, MSGSDK$CallbackRequestNotifications paramMSGSDK$CallbackRequestNotifications);
  
  void requestUpdateStatusReadOrDelete(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, MSGSDK$CallbackUpdateStatusReadOrDelete paramMSGSDK$CallbackUpdateStatusReadOrDelete);
  
  void saveUserPreferences();
  
  void sendNotification(Context paramContext, NotificationData paramNotificationData);
  
  void setAuthentication(Authentication paramAuthentication);
  
  void setConnectorEnvironment(ConnectorEnvironment paramConnectorEnvironment);
  
  void setHubConnector(ie paramie);
  
  void setIdProvider(IdProvider paramIdProvider);
  
  void setInternalNotificationListener(MSGSDK$InternalNotificationListener paramMSGSDK$InternalNotificationListener);
  
  void setToolbarColor(@ColorRes int paramInt);
  
  void setTracking(Tracking paramTracking);
  
  void showPlayServiceError(Activity paramActivity);
  
  void subscribeArch(MSGSDK$Callback paramMSGSDK$Callback);
  
  void unsubscribeArch(MSGSDK$Callback paramMSGSDK$Callback);
  
  void updateStatusArch(String paramString1, String paramString2, String paramString3, MSGSDK$CallbackUpdateStatus paramMSGSDK$CallbackUpdateStatus);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\MSG.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */