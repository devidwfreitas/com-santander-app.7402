import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class ddx {
  private static final ExecutorService a = new ThreadPoolExecutor(0, 4, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>(), new dgh("GAC_Transform"));
  
  public static ExecutorService a() {
    return a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ddx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */