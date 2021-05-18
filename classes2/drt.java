import android.os.Handler;
import java.util.concurrent.Executor;

class drt implements Executor {
  drt(drs paramdrs, Handler paramHandler) {}
  
  public void execute(Runnable paramRunnable) {
    this.a.post(paramRunnable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */