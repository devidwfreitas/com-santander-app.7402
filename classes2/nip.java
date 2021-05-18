import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;

public final class nip {
  public static String a(Context paramContext) {
    try {
      String str = paramContext.getPackageName();
      return (paramContext.getPackageManager().getPackageInfo(str, 0)).versionName;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return null;
    } 
  }
  
  public static boolean a() {
    return (Looper.getMainLooper() == Looper.myLooper());
  }
  
  public static boolean b(Context paramContext) {
    return (Build.VERSION.SDK_INT < 13) ? false : ((((UiModeManager)paramContext.getSystemService("uimode")).getCurrentModeType() == 4));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nip.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */