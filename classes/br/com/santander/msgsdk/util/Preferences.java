package br.com.santander.msgsdk.util;

import android.content.Context;
import android.content.SharedPreferences;

public class Preferences {
  public static void clearStatusToSend(Context paramContext) {
    paramContext.getSharedPreferences(Constants.STATUS_PREFERENCES, 0).edit().clear().apply();
  }
  
  public static void clearUserRegistered(Context paramContext) {
    paramContext.getSharedPreferences(Constants.GCM_PREFERENCES, 0).edit().clear().apply();
  }
  
  public static String getStatusToSend(Context paramContext) {
    return paramContext.getSharedPreferences(Constants.STATUS_PREFERENCES, 0).getString(Constants.STATUS_KEY, Constants.EMPTY);
  }
  
  public static int getUnreadNotifications(Context paramContext) {
    return paramContext.getSharedPreferences(Constants.PREFERENCES_NOTIFICATIONS_UNREAD_KEY, 0).getInt(Constants.PREFERENCES_NOTIFICATIONS_UNREAD_VALUE, 0);
  }
  
  public static String getUserRegistered(Context paramContext) {
    return paramContext.getSharedPreferences(Constants.GCM_PREFERENCES, 0).getString(Constants.GCM_VALUE_PREFERENCES, Constants.EMPTY);
  }
  
  public static boolean isSubscribe(Context paramContext) {
    return paramContext.getSharedPreferences(Constants.SUBSCRIBE_KEY, 0).getBoolean(Constants.SUBSCRIBE_VALUE, false);
  }
  
  public static void setStatusToSend(Context paramContext, String paramString) {
    SharedPreferences.Editor editor = paramContext.getSharedPreferences(Constants.STATUS_PREFERENCES, 0).edit();
    editor.putString(Constants.STATUS_KEY, getStatusToSend(paramContext).concat(paramString));
    editor.apply();
  }
  
  public static void setSubscribe(Context paramContext, boolean paramBoolean) {
    SharedPreferences.Editor editor = paramContext.getSharedPreferences(Constants.SUBSCRIBE_KEY, 0).edit();
    editor.putBoolean(Constants.SUBSCRIBE_VALUE, paramBoolean);
    editor.apply();
  }
  
  public static void setUnreadNotifications(Context paramContext, int paramInt) {
    SharedPreferences.Editor editor = paramContext.getSharedPreferences(Constants.PREFERENCES_NOTIFICATIONS_UNREAD_KEY, 0).edit();
    editor.putInt(Constants.PREFERENCES_NOTIFICATIONS_UNREAD_VALUE, paramInt);
    editor.apply();
  }
  
  public static void setUserRegisteredCloudMessaging(Context paramContext, String paramString) {
    SharedPreferences.Editor editor = paramContext.getSharedPreferences(Constants.GCM_PREFERENCES, 0).edit();
    editor.putString(Constants.GCM_VALUE_PREFERENCES, paramString);
    editor.apply();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsd\\util\Preferences.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */