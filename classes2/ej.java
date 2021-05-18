import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

class ej implements Executor {
  private ej() {}
  
  public void execute(Runnable paramRunnable) {
    (new Handler(Looper.getMainLooper())).post(paramRunnable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ej.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */