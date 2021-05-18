import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

class fge {
  private static final String[] a = new String[] { "Superuser.apk", "myhappy.apk" };
  
  private static final String[] b = new String[] { "/system/bin/", "/system/xbin/", "/sbin/", "/system/", "/system/bin/.ext/", "/system/usr/we-need-root/" };
  
  private static Set<String> c = new HashSet<String>();
  
  static {
    c.add("com.noshufou.android.su");
    c.add("eu.chainfire.supersu");
    c.add("eu.chainfire.supersu.pro");
    c.add("com.koushikdutta.superuser");
    c.add("com.noshufou.android.su.elite");
    c.add("david.lahuta.superuser.free.pro");
    c.add("com.bitcubate.android.su.installer");
    c.add("com.bitcubate.superuser.pro");
    c.add("david.lahuta.superuser");
  }
  
  static int a(Context paramContext) {
    Boolean[] arrayOfBoolean = new Boolean[3];
    arrayOfBoolean[0] = Boolean.valueOf(b(paramContext));
    arrayOfBoolean[1] = Boolean.valueOf(a());
    arrayOfBoolean[2] = Boolean.valueOf(b());
    int k = arrayOfBoolean.length;
    int j = 0;
    int i;
    for (i = 0; j < k; i = (i << 1) + b) {
      byte b;
      if (arrayOfBoolean[j].booleanValue()) {
        b = 1;
      } else {
        b = 0;
      } 
      j++;
    } 
    return i;
  }
  
  private static boolean a() {
    try {
      for (String str : Arrays.<String>asList(a)) {
        boolean bool = (new File("/system/app/" + str)).exists();
        if (bool)
          return true; 
      } 
    } catch (Exception exception) {}
    return false;
  }
  
  private static boolean b() {
    for (String str : Arrays.<String>asList(b)) {
      if ((new File(str + "su")).exists())
        return true; 
    } 
    return false;
  }
  
  private static boolean b(Context paramContext) {
    List list = paramContext.getPackageManager().getInstalledApplications(128);
    if (list != null)
      for (ApplicationInfo applicationInfo : list) {
        if (c.contains(applicationInfo.packageName))
          return true; 
      }  
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fge.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */