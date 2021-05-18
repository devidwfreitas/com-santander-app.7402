import android.content.Context;
import android.os.Looper;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

public class dlq extends dmu {
  private static final AtomicLong k = new AtomicLong(Long.MIN_VALUE);
  
  private ExecutorService a;
  
  private dlu b;
  
  private dlu c;
  
  private final PriorityBlockingQueue<FutureTask<?>> d = new PriorityBlockingQueue<FutureTask<?>>();
  
  private final BlockingQueue<FutureTask<?>> e = new LinkedBlockingQueue<FutureTask<?>>();
  
  private final Thread.UncaughtExceptionHandler f = new dls(this, "Thread death: Uncaught exception on worker thread");
  
  private final Thread.UncaughtExceptionHandler g = new dls(this, "Thread death: Uncaught exception on network thread");
  
  private final Object h = new Object();
  
  private final Semaphore i = new Semaphore(2);
  
  private volatile boolean j;
  
  dlq(dlv paramdlv) {
    super(paramdlv);
  }
  
  private void a(dlt<?> paramdlt) {
    synchronized (this.h) {
      this.d.add(paramdlt);
      if (this.b == null) {
        this.b = new dlu(this, "Measurement Worker", this.d);
        this.b.setUncaughtExceptionHandler(this.f);
        this.b.start();
      } else {
        this.b.a();
      } 
      return;
    } 
  }
  
  private void a(FutureTask<?> paramFutureTask) {
    synchronized (this.h) {
      this.e.add(paramFutureTask);
      if (this.c == null) {
        this.c = new dlu(this, "Measurement Network", this.e);
        this.c.setUncaughtExceptionHandler(this.g);
        this.c.start();
      } else {
        this.c.a();
      } 
      return;
    } 
  }
  
  public <V> Future<V> a(Callable<V> paramCallable) {
    R();
    csp.a(paramCallable);
    dlt<V> dlt = new dlt<V>(this, paramCallable, false, "Task exception on worker thread");
    if (Thread.currentThread() == this.b) {
      dlt.run();
      return dlt;
    } 
    a(dlt);
    return dlt;
  }
  
  protected void a() {}
  
  public void a(Runnable paramRunnable) {
    R();
    csp.a(paramRunnable);
    a(new dlt(this, paramRunnable, false, "Task exception on worker thread"));
  }
  
  public <V> Future<V> b(Callable<V> paramCallable) {
    R();
    csp.a(paramCallable);
    dlt<V> dlt = new dlt<V>(this, paramCallable, true, "Task exception on worker thread");
    if (Thread.currentThread() == this.b) {
      dlt.run();
      return dlt;
    } 
    a(dlt);
    return dlt;
  }
  
  public void b(Runnable paramRunnable) {
    R();
    csp.a(paramRunnable);
    a(new dlt(this, paramRunnable, false, "Task exception on network thread"));
  }
  
  public void d() {
    if (Thread.currentThread() != this.c)
      throw new IllegalStateException("Call expected from network thread"); 
  }
  
  public void e() {
    if (Thread.currentThread() != this.b)
      throw new IllegalStateException("Call expected from worker thread"); 
  }
  
  public boolean x() {
    return (Looper.myLooper() == Looper.getMainLooper());
  }
  
  public boolean y() {
    return (Thread.currentThread() == this.b);
  }
  
  ExecutorService z() {
    synchronized (this.h) {
      if (this.a == null)
        this.a = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue<Runnable>(100)); 
      return this.a;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dlq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */