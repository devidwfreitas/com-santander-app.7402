import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.santander.app.MinhaConta;

public class myo extends hbm {
  public static void a(Activity paramActivity, String paramString) {
    paramActivity.startActivity(MinhaConta.b().getPackageManager().getLaunchIntentForPackage(paramString));
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2, zx paramzx) {
    String str = miq.C().f().k();
    if (paramzx != null) {
      paramzx.a(new String[] { paramString2, str });
      return;
    } 
    Intent intent = paramActivity.getPackageManager().getLaunchIntentForPackage(paramString1);
    intent.putExtra("dlb-ticket", paramString2);
    paramActivity.startActivity(intent);
  }
  
  public static void a(Activity paramActivity, String paramString, zx paramzx) {
    (new nea(new myr(paramActivity, paramString, paramzx))).a();
  }
  
  public static void a(Context paramContext, String paramString) {
    paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(MinhaConta.b().getString(2131297530) + paramString)));
  }
  
  public static boolean a(int paramInt) {
    PackageManager packageManager = MinhaConta.b().getPackageManager();
    try {
      packageManager.getPackageInfo(MinhaConta.b().getString(paramInt), 1);
      return true;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return false;
    } 
  }
  
  public static void b(Activity paramActivity, String paramString) {
    (new nea(new myp(paramActivity, paramString))).a();
  }
  
  public static void b(Context paramContext, String paramString) {
    paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }
  
  private static void b(Context paramContext, String paramString1, String paramString2, String paramString3) {
    Intent intent = paramContext.getPackageManager().getLaunchIntentForPackage(paramString1);
    intent.putExtra("dlb-ticket", paramString2);
    intent.putExtra("VIEW_REDIRECT", paramString3);
    paramContext.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */