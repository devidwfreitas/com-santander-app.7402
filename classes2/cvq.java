import android.content.Context;
import android.os.DropBoxManager;
import android.util.Log;

public final class cvq {
  private static final String[] a = new String[] { "android.", "com.android.", "dalvik.", "java.", "javax." };
  
  private static DropBoxManager b = null;
  
  private static boolean c = false;
  
  private static int d = -1;
  
  private static int e = 0;
  
  private static boolean a() {
    return false;
  }
  
  public static boolean a(Context paramContext, Throwable paramThrowable) {
    try {
      csp.a(paramContext);
      csp.a(paramThrowable);
      return false;
    } catch (Exception exception) {
      try {
        boolean bool = a();
        if (bool)
          throw exception; 
      } catch (Exception exception1) {
        Log.e("CrashUtils", "Error determining which process we're running in!", exception1);
        boolean bool = false;
        if (bool)
          throw exception; 
      } 
      Log.e("CrashUtils", "Error adding exception to DropBox!", exception);
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */