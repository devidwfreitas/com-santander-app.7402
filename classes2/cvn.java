import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.annotation.Nullable;

public class cvn {
  public static int a(Context paramContext, String paramString) {
    return a(b(paramContext, paramString));
  }
  
  public static int a(PackageInfo paramPackageInfo) {
    if (paramPackageInfo != null && paramPackageInfo.applicationInfo != null) {
      Bundle bundle = paramPackageInfo.applicationInfo.metaData;
      if (bundle != null)
        return bundle.getInt("com.google.android.gms.version", -1); 
    } 
    return -1;
  }
  
  @Nullable
  public static PackageInfo b(Context paramContext, String paramString) {
    try {
      return dgl.b(paramContext).b(paramString, 128);
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return null;
    } 
  }
  
  public static boolean c(Context paramContext, String paramString) {
    boolean bool = false;
    "com.google.android.gms".equals(paramString);
    try {
      int i = (dgl.b(paramContext).a(paramString, 0)).flags;
      if ((i & 0x200000) != 0)
        bool = true; 
      return bool;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */