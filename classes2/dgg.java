import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

public class dgg implements Executor {
  private final Handler a;
  
  public dgg(Looper paramLooper) {
    this.a = new Handler(paramLooper);
  }
  
  public void execute(@NonNull Runnable paramRunnable) {
    this.a.post(paramRunnable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */