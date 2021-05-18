import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class dgh implements ThreadFactory {
  private final String a;
  
  private final int b;
  
  private final AtomicInteger c = new AtomicInteger();
  
  private final ThreadFactory d = Executors.defaultThreadFactory();
  
  public dgh(String paramString) {
    this(paramString, 0);
  }
  
  public dgh(String paramString, int paramInt) {
    this.a = csp.<String>a(paramString, "Name must not be null");
    this.b = paramInt;
  }
  
  public Thread newThread(Runnable paramRunnable) {
    paramRunnable = this.d.newThread(new dgi(paramRunnable, this.b));
    String str = this.a;
    int i = this.c.getAndIncrement();
    paramRunnable.setName((new StringBuilder(String.valueOf(str).length() + 13)).append(str).append("[").append(i).append("]").toString());
    return (Thread)paramRunnable;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */