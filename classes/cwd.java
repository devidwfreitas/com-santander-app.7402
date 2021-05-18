import android.os.Build;

public final class cwd {
  public static boolean a() {
    int i = Build.VERSION.SDK_INT;
    return true;
  }
  
  public static boolean b() {
    int i = Build.VERSION.SDK_INT;
    return true;
  }
  
  public static boolean c() {
    int i = Build.VERSION.SDK_INT;
    return true;
  }
  
  public static boolean d() {
    return (Build.VERSION.SDK_INT >= 15);
  }
  
  public static boolean e() {
    return (Build.VERSION.SDK_INT >= 16);
  }
  
  public static boolean f() {
    return (Build.VERSION.SDK_INT >= 17);
  }
  
  public static boolean g() {
    return (Build.VERSION.SDK_INT >= 18);
  }
  
  public static boolean h() {
    return (Build.VERSION.SDK_INT >= 19);
  }
  
  public static boolean i() {
    return (Build.VERSION.SDK_INT >= 20);
  }
  
  @Deprecated
  public static boolean j() {
    return k();
  }
  
  public static boolean k() {
    return (Build.VERSION.SDK_INT >= 21);
  }
  
  public static boolean l() {
    return (Build.VERSION.SDK_INT >= 23);
  }
  
  public static boolean m() {
    return (Build.VERSION.SDK_INT >= 24);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cwd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */