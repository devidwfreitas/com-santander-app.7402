import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;

public class cvd {
  private static Object a = new Object();
  
  private static boolean b;
  
  private static String c;
  
  private static int d;
  
  public static String a(Context paramContext) {
    c(paramContext);
    return c;
  }
  
  public static int b(Context paramContext) {
    c(paramContext);
    return d;
  }
  
  private static void c(Context paramContext) {
    synchronized (a) {
      if (b)
        return; 
      b = true;
      String str = paramContext.getPackageName();
      dgk dgk = dgl.b(paramContext);
      try {
        Bundle bundle = (dgk.a(str, 128)).metaData;
        if (bundle == null)
          return; 
        c = bundle.getString("com.google.app.id");
        d = bundle.getInt("com.google.android.gms.version");
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {}
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */