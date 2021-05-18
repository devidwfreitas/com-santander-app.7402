import android.os.Looper;

public final class cne {
  public static void a(String paramString) {
    if (Looper.myLooper() == Looper.getMainLooper())
      throw new IllegalStateException(paramString); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cne.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */