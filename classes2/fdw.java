import android.os.Looper;

public class fdw {
  public static void a() {
    if (Looper.getMainLooper() != Looper.myLooper())
      throw new IllegalStateException("Must be called from the main thread."); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */