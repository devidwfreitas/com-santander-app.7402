package com.ca.org.acra.collector;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import com.ca.org.acra.ACRA;
import java.lang.reflect.Field;

final class SettingsCollector {
  public static String collectSecureSettings(Context paramContext) {
    StringBuilder stringBuilder = new StringBuilder();
    for (Field field : Settings.Secure.class.getFields()) {
      if (!field.isAnnotationPresent((Class)Deprecated.class) && field.getType() == String.class && isAuthorized(field))
        try {
          String str = Settings.Secure.getString(paramContext.getContentResolver(), (String)field.get((Object)null));
          if (str != null)
            stringBuilder.append(field.getName()).append("=").append(str).append("\n"); 
        } catch (IllegalArgumentException illegalArgumentException) {
          Log.w(ACRA.LOG_TAG, "Error : ", illegalArgumentException);
        } catch (IllegalAccessException illegalAccessException) {
          Log.w(ACRA.LOG_TAG, "Error : ", illegalAccessException);
        }  
    } 
    return stringBuilder.toString();
  }
  
  public static String collectSystemSettings(Context paramContext) {
    StringBuilder stringBuilder = new StringBuilder();
    for (Field field : Settings.System.class.getFields()) {
      if (!field.isAnnotationPresent((Class)Deprecated.class) && field.getType() == String.class)
        try {
          String str = Settings.System.getString(paramContext.getContentResolver(), (String)field.get((Object)null));
          if (str != null)
            stringBuilder.append(field.getName()).append("=").append(str).append("\n"); 
        } catch (IllegalArgumentException illegalArgumentException) {
          Log.w(ACRA.LOG_TAG, "Error : ", illegalArgumentException);
        } catch (IllegalAccessException illegalAccessException) {
          Log.w(ACRA.LOG_TAG, "Error : ", illegalAccessException);
        }  
    } 
    return stringBuilder.toString();
  }
  
  private static boolean isAuthorized(Field paramField) {
    return !(paramField == null || paramField.getName().startsWith("WIFI_AP"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\SettingsCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */