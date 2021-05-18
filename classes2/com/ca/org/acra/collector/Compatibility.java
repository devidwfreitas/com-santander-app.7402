package com.ca.org.acra.collector;

import android.content.Context;
import android.os.Build;
import java.lang.reflect.Field;

class Compatibility {
  public static int getAPILevel() {
    try {
      return Build.VERSION.class.getField("SDK_INT").getInt(null);
    } catch (SecurityException securityException) {
      return Integer.parseInt(Build.VERSION.SDK);
    } catch (NoSuchFieldException noSuchFieldException) {
      return Integer.parseInt(Build.VERSION.SDK);
    } catch (IllegalArgumentException illegalArgumentException) {
      return Integer.parseInt(Build.VERSION.SDK);
    } catch (IllegalAccessException illegalAccessException) {
      return Integer.parseInt(Build.VERSION.SDK);
    } 
  }
  
  public static String getDropBoxServiceName() throws NoSuchFieldException, IllegalAccessException {
    String str = null;
    Field field = Context.class.getField("DROPBOX_SERVICE");
    if (field != null)
      str = (String)field.get(null); 
    return str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\Compatibility.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */