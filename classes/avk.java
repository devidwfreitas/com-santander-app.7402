import com.adjust.sdk.CustomScheduledExecutor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public class avk implements ThreadFactory {
  public avk(CustomScheduledExecutor paramCustomScheduledExecutor, String paramString) {}
  
  public Thread newThread(Runnable paramRunnable) {
    paramRunnable = Executors.defaultThreadFactory().newThread(new avn(this.b, paramRunnable));
    paramRunnable.setPriority(1);
    paramRunnable.setName("Adjust-" + paramRunnable.getName() + "-" + this.a);
    paramRunnable.setDaemon(true);
    paramRunnable.setUncaughtExceptionHandler(new avl(this));
    return (Thread)paramRunnable;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */