package com.ca.org.acra.collector;

import android.content.Context;
import android.text.format.Time;
import android.util.Log;
import com.ca.org.acra.ACRA;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;

final class DropBoxCollector {
  private static final String NO_RESULT = "N/A";
  
  private static final String[] SYSTEM_TAGS = new String[] { 
      "system_app_anr", "system_app_wtf", "system_app_crash", "system_server_anr", "system_server_wtf", "system_server_crash", "BATTERY_DISCHARGE_INFO", "SYSTEM_RECOVERY_LOG", "SYSTEM_BOOT", "SYSTEM_LAST_KMSG", 
      "APANIC_CONSOLE", "APANIC_THREADS", "SYSTEM_RESTART", "SYSTEM_TOMBSTONE", "data_app_strictmode" };
  
  public static String read(Context paramContext, String[] paramArrayOfString) {
    try {
      String str = Compatibility.getDropBoxServiceName();
      if (str == null)
        return "N/A"; 
      Object object = paramContext.getSystemService(str);
      Method method = object.getClass().getMethod("getNextEntry", new Class[] { String.class, long.class });
      if (method == null)
        return ""; 
      Time time = new Time();
      time.setToNow();
      time.minute -= ACRA.getConfig().dropboxCollectionMinutes();
      time.normalize(false);
      long l = time.toMillis(false);
      ArrayList arrayList = new ArrayList();
      if (ACRA.getConfig().includeDropBoxSystemTags())
        arrayList.addAll(Arrays.asList(SYSTEM_TAGS)); 
      if (paramArrayOfString != null && paramArrayOfString.length > 0)
        arrayList.addAll(Arrays.asList(paramArrayOfString)); 
      if (arrayList.isEmpty())
        return "No tag configured for collection."; 
      StringBuilder stringBuilder = new StringBuilder();
      for (String str1 : arrayList) {
        stringBuilder.append("Tag: ").append(str1).append('\n');
        Object object1 = method.invoke(object, new Object[] { str1, Long.valueOf(l) });
        if (object1 == null) {
          stringBuilder.append("Nothing.").append('\n');
          continue;
        } 
        Method method1 = object1.getClass().getMethod("getText", new Class[] { int.class });
        Method method2 = object1.getClass().getMethod("getTimeMillis", (Class[])null);
        Method method3 = object1.getClass().getMethod("close", (Class[])null);
        while (object1 != null) {
          long l1 = ((Long)method2.invoke(object1, (Object[])null)).longValue();
          time.set(l1);
          stringBuilder.append("@").append(time.format2445()).append('\n');
          String str2 = (String)method1.invoke(object1, new Object[] { Integer.valueOf(500) });
          if (str2 != null) {
            stringBuilder.append("Text: ").append(str2).append('\n');
          } else {
            stringBuilder.append("Not Text!").append('\n');
          } 
          method3.invoke(object1, (Object[])null);
          object1 = method.invoke(object, new Object[] { str1, Long.valueOf(l1) });
        } 
      } 
      return stringBuilder.toString();
    } catch (SecurityException securityException) {
      Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
    } catch (NoSuchMethodException noSuchMethodException) {
      Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
    } catch (IllegalArgumentException illegalArgumentException) {
      Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
    } catch (IllegalAccessException illegalAccessException) {
      Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
    } catch (InvocationTargetException invocationTargetException) {
      Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
    } catch (NoSuchFieldException noSuchFieldException) {
      Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
    } 
    return "N/A";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\DropBoxCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */