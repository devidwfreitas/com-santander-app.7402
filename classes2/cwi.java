import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public final class cwi {
  public static boolean a(Context paramContext, int paramInt) {
    if (a(paramContext, paramInt, "com.google.android.gms")) {
      PackageManager packageManager = paramContext.getPackageManager();
      try {
        PackageInfo packageInfo = packageManager.getPackageInfo("com.google.android.gms", 64);
        return cww.a(paramContext).a(paramContext.getPackageManager(), packageInfo);
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {}
    } 
    return false;
  }
  
  @TargetApi(19)
  public static boolean a(Context paramContext, int paramInt, String paramString) {
    return dgl.b(paramContext).a(paramInt, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */