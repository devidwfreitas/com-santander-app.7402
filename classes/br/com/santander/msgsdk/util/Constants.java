package br.com.santander.msgsdk.util;

public class Constants {
  public static String EMPTY;
  
  public static final String ENDPOINT_CONFIG_PANEL = "messaging-internet/v1/checkCategoryMembership";
  
  public static final String ENDPOINT_CONFIG_PANEL_UPDATE = "messaging-internet/v1/update-category";
  
  public static final String ENDPOINT_NOTIFICATIONS = "messaging-internet/v1/list-notification";
  
  public static final String ENDPOINT_NOTIFICATION_READ_DELETED = "messaging-internet/v1/update-notification-status";
  
  public static final String ENDPOINT_UPDATE_STATUS = "push/v1/status";
  
  public static String GCM_PREFERENCES = "gcmPreferences";
  
  public static String GCM_VALUE_PREFERENCES = "gcmValuePreferences";
  
  public static final String JSON_CATEGORIES = "categories";
  
  public static final String NOTIFICATIONS_PAGE_NUMBER = "1";
  
  public static String PREFERENCES_NOTIFICATIONS_UNREAD_KEY;
  
  public static String PREFERENCES_NOTIFICATIONS_UNREAD_VALUE;
  
  public static final String SP_UT = "sput";
  
  public static final String SP_UT_FILENAME = "spUtFile";
  
  public static String STATUS_KEY;
  
  public static String STATUS_PREFERENCES = "prefStatus";
  
  public static String SUBSCRIBE_KEY;
  
  public static String SUBSCRIBE_VALUE;
  
  static {
    STATUS_KEY = "status";
    SUBSCRIBE_KEY = "subscribePref";
    SUBSCRIBE_VALUE = "subscribeValue";
    EMPTY = "";
    PREFERENCES_NOTIFICATIONS_UNREAD_KEY = "unreadNotificationsKey";
    PREFERENCES_NOTIFICATIONS_UNREAD_VALUE = "unreadNotificationsValue";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsd\\util\Constants.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */