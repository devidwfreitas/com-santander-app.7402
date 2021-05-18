package android.support.v4.app;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;

public final class AppOpsManagerCompat {
  private static final AppOpsManagerCompat$AppOpsManagerImpl IMPL = new AppOpsManagerCompat$AppOpsManagerImpl();
  
  public static final int MODE_ALLOWED = 0;
  
  public static final int MODE_DEFAULT = 3;
  
  public static final int MODE_IGNORED = 1;
  
  public static int noteOp(@NonNull Context paramContext, @NonNull String paramString1, int paramInt, @NonNull String paramString2) {
    return IMPL.noteOp(paramContext, paramString1, paramInt, paramString2);
  }
  
  public static int noteProxyOp(@NonNull Context paramContext, @NonNull String paramString1, @NonNull String paramString2) {
    return IMPL.noteProxyOp(paramContext, paramString1, paramString2);
  }
  
  public static String permissionToOp(@NonNull String paramString) {
    return IMPL.permissionToOp(paramString);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 23) {
      IMPL = new AppOpsManagerCompat$AppOpsManager23();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\AppOpsManagerCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */