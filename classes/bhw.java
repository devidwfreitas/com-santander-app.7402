import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class bhw implements ThreadFactory {
  private final AtomicInteger a = new AtomicInteger(0);
  
  public Thread newThread(Runnable paramRunnable) {
    return new Thread(paramRunnable, "FacebookSdk #" + this.a.incrementAndGet());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bhw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */