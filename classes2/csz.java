import android.os.Looper;
import android.util.Log;

public final class csz {
  public static void a(Object paramObject) {
    if (paramObject == null)
      throw new IllegalArgumentException("null reference"); 
  }
  
  public static void a(String paramString) {
    if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
      String str1 = String.valueOf(Thread.currentThread());
      String str2 = String.valueOf(Looper.getMainLooper().getThread());
      Log.e("Asserts", (new StringBuilder(String.valueOf(str1).length() + 57 + String.valueOf(str2).length())).append("checkMainThread: current thread ").append(str1).append(" IS NOT the main thread ").append(str2).append("!").toString());
      throw new IllegalStateException(paramString);
    } 
  }
  
  public static void a(boolean paramBoolean) {
    if (!paramBoolean)
      throw new IllegalStateException(); 
  }
  
  public static void a(boolean paramBoolean, Object paramObject) {
    if (!paramBoolean)
      throw new IllegalStateException(String.valueOf(paramObject)); 
  }
  
  public static void b(String paramString) {
    if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
      String str1 = String.valueOf(Thread.currentThread());
      String str2 = String.valueOf(Looper.getMainLooper().getThread());
      Log.e("Asserts", (new StringBuilder(String.valueOf(str1).length() + 56 + String.valueOf(str2).length())).append("checkNotMainThread: current thread ").append(str1).append(" IS the main thread ").append(str2).append("!").toString());
      throw new IllegalStateException(paramString);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */