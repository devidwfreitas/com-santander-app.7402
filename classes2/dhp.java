import android.os.StrictMode;
import java.util.concurrent.Callable;

public class dhp {
  public static <T> T a(Callable<T> paramCallable) {
    StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
    try {
      StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.LAX);
      paramCallable = (Callable<T>)paramCallable.call();
      return (T)paramCallable;
    } catch (Throwable throwable) {
      return null;
    } finally {
      StrictMode.setThreadPolicy(threadPolicy);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */