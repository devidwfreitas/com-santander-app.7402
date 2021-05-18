import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

final class egy implements Executor {
  public void execute(@NonNull Runnable paramRunnable) {
    paramRunnable.run();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\egy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */