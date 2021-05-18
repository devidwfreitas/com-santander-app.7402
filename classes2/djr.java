import android.os.Looper;
import android.support.annotation.Nullable;

public class djr {
  public static Looper a() {
    if (Looper.myLooper() != null) {
      boolean bool1 = true;
      csp.a(bool1, "Can't create handler inside thread that has not called Looper.prepare()");
      return Looper.myLooper();
    } 
    boolean bool = false;
    csp.a(bool, "Can't create handler inside thread that has not called Looper.prepare()");
    return Looper.myLooper();
  }
  
  public static Looper a(@Nullable Looper paramLooper) {
    return (paramLooper != null) ? paramLooper : a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */