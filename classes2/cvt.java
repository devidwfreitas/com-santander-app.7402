import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;

public final class cvt {
  private static Boolean a;
  
  private static Boolean b;
  
  private static Boolean c;
  
  private static Boolean d;
  
  private static Boolean e;
  
  public static boolean a() {
    boolean bool = cwv.h;
    return "user".equals(Build.TYPE);
  }
  
  @TargetApi(20)
  public static boolean a(Context paramContext) {
    if (c == null) {
      boolean bool;
      if (cwd.i() && paramContext.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
        bool = true;
      } else {
        bool = false;
      } 
      c = Boolean.valueOf(bool);
    } 
    return c.booleanValue();
  }
  
  public static boolean a(Resources paramResources) {
    boolean bool = false;
    if (paramResources == null)
      return false; 
    if (a == null) {
      boolean bool1;
      if (((paramResources.getConfiguration()).screenLayout & 0xF) > 3) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (bool1 || b(paramResources))
        bool = true; 
      a = Boolean.valueOf(bool);
    } 
    return a.booleanValue();
  }
  
  @TargetApi(24)
  public static boolean b(Context paramContext) {
    return ((!cwd.m() || c(paramContext)) && a(paramContext));
  }
  
  private static boolean b(Resources paramResources) {
    if (b == null) {
      boolean bool;
      Configuration configuration = paramResources.getConfiguration();
      if ((configuration.screenLayout & 0xF) <= 3 && configuration.smallestScreenWidthDp >= 600) {
        bool = true;
      } else {
        bool = false;
      } 
      b = Boolean.valueOf(bool);
    } 
    return b.booleanValue();
  }
  
  @TargetApi(21)
  public static boolean c(Context paramContext) {
    if (d == null) {
      boolean bool;
      if (cwd.k() && paramContext.getPackageManager().hasSystemFeature("cn.google")) {
        bool = true;
      } else {
        bool = false;
      } 
      d = Boolean.valueOf(bool);
    } 
    return d.booleanValue();
  }
  
  public static boolean d(Context paramContext) {
    if (e == null)
      e = Boolean.valueOf(paramContext.getPackageManager().hasSystemFeature("android.hardware.type.iot")); 
    return e.booleanValue();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */