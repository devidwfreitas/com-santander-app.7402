import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;

public final class mwe {
  public static final int a = 4072;
  
  private static final String b = "DrawOverlaySettingPrefs";
  
  private static final String c = "DrawOverlaySettingPrefs_Active";
  
  @TargetApi(23)
  public static void a(Activity paramActivity) {
    paramActivity.startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + paramActivity.getPackageName())), 4072);
  }
  
  @TargetApi(23)
  public static void a(Context paramContext, int paramInt, boolean paramBoolean) {
    if (paramInt == 4072) {
      if (a())
        if (Settings.canDrawOverlays(paramContext)) {
          c(paramContext);
        } else {
          d(paramContext);
        }  
      if (paramBoolean)
        gpu.a(); 
    } 
  }
  
  public static boolean a() {
    return (Build.VERSION.SDK_INT >= 23);
  }
  
  public static boolean a(Context paramContext) {
    return false;
  }
  
  @TargetApi(23)
  public static void b(Context paramContext) {
    if (a() && !Settings.canDrawOverlays(paramContext) && e(paramContext))
      d(paramContext); 
  }
  
  public static void c(Context paramContext) {
    f(paramContext).edit().putBoolean("DrawOverlaySettingPrefs_Active", true).apply();
  }
  
  public static void d(Context paramContext) {
    f(paramContext).edit().putBoolean("DrawOverlaySettingPrefs_Active", false).apply();
  }
  
  private static boolean e(Context paramContext) {
    return f(paramContext).getBoolean("DrawOverlaySettingPrefs_Active", false);
  }
  
  private static SharedPreferences f(Context paramContext) {
    return paramContext.getSharedPreferences("DrawOverlaySettingPrefs", 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */