import android.annotation.SuppressLint;
import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class eh {
  static final int a;
  
  static final int b;
  
  static final long c = 1L;
  
  private static final eh d = new eh();
  
  private static final int f = Runtime.getRuntime().availableProcessors();
  
  private final Executor e = new ej(null);
  
  static {
    a = f + 1;
    b = f * 2 + 1;
  }
  
  public static ExecutorService a() {
    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(a, b, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>());
    a(threadPoolExecutor, true);
    return threadPoolExecutor;
  }
  
  public static ExecutorService a(ThreadFactory paramThreadFactory) {
    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(a, b, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>(), paramThreadFactory);
    a(threadPoolExecutor, true);
    return threadPoolExecutor;
  }
  
  @SuppressLint({"NewApi"})
  public static void a(ThreadPoolExecutor paramThreadPoolExecutor, boolean paramBoolean) {
    if (Build.VERSION.SDK_INT >= 9)
      paramThreadPoolExecutor.allowCoreThreadTimeOut(paramBoolean); 
  }
  
  public static Executor b() {
    return d.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */