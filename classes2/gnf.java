import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class gnf implements ThreadFactory {
  private final AtomicInteger a = new AtomicInteger(1);
  
  public Thread newThread(Runnable paramRunnable) {
    return new Thread(paramRunnable, "AsyncTask #" + this.a.getAndIncrement());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gnf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */