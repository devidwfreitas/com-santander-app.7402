import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

final class es {
  private static final es a = new es();
  
  private final ExecutorService b;
  
  private final ScheduledExecutorService c;
  
  private final Executor d;
  
  private es() {
    ExecutorService executorService;
    if (!d()) {
      executorService = Executors.newCachedThreadPool();
    } else {
      executorService = eh.a();
    } 
    this.b = executorService;
    this.c = Executors.newSingleThreadScheduledExecutor();
    this.d = new eu(null);
  }
  
  public static ExecutorService a() {
    return a.b;
  }
  
  static ScheduledExecutorService b() {
    return a.c;
  }
  
  static Executor c() {
    return a.d;
  }
  
  private static boolean d() {
    String str = System.getProperty("java.runtime.name");
    return (str == null) ? false : str.toLowerCase(Locale.US).contains("android");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\es.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */