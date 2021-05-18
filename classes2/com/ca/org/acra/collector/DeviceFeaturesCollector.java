package com.ca.org.acra.collector;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.ca.org.acra.ACRA;

final class DeviceFeaturesCollector {
  public static String getFeatures(Context paramContext) {
    int i = 0;
    if (Compatibility.getAPILevel() < 5)
      return "Data available only with API Level >= 5"; 
    StringBuilder stringBuilder = new StringBuilder();
    try {
      PackageManager packageManager = paramContext.getPackageManager();
      Object[] arrayOfObject = (Object[])PackageManager.class.getMethod("getSystemAvailableFeatures", (Class[])null).invoke(packageManager, new Object[0]);
      int j = arrayOfObject.length;
      while (i < j) {
        Object object = arrayOfObject[i];
        String str = (String)object.getClass().getField("name").get(object);
        if (str != null) {
          stringBuilder.append(str);
        } else {
          object = object.getClass().getMethod("getGlEsVersion", (Class[])null).invoke(object, new Object[0]);
          stringBuilder.append("glEsVersion = ");
          stringBuilder.append((String)object);
        } 
        stringBuilder.append("\n");
        i++;
      } 
    } catch (Throwable throwable) {
      Log.w(ACRA.LOG_TAG, "Couldn't retrieve DeviceFeatures for " + paramContext.getPackageName(), throwable);
      stringBuilder.append("Could not retrieve data: ");
      stringBuilder.append(throwable.getMessage());
    } 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\DeviceFeaturesCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */