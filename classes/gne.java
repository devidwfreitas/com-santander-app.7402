import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class gne<Params, Progress, Result> {
  private static final String a = "AsyncTask";
  
  private static final int b = 10;
  
  private static final int c = 128;
  
  private static final int d = 1;
  
  public static final Executor e;
  
  public static final Executor f;
  
  private static final ThreadFactory g = (ThreadFactory)new gnf();
  
  private static final BlockingQueue<Runnable> h = new LinkedBlockingQueue<Runnable>(128);
  
  private static final int i = 1;
  
  private static final int j = 2;
  
  private static final gnk k;
  
  private static volatile Executor l;
  
  private final gno<Params, Result> m = (gno<Params, Result>)new gng(this);
  
  private final FutureTask<Result> n = (FutureTask<Result>)new gnh(this, (Callable)this.m);
  
  private volatile gnn o = gnn.PENDING;
  
  private final AtomicBoolean p = new AtomicBoolean();
  
  private final AtomicBoolean q = new AtomicBoolean();
  
  static {
    e = new ThreadPoolExecutor(10, 128, 1L, TimeUnit.SECONDS, h, g);
    f = (Executor)new gnl(null);
    k = new gnk(null);
    l = f;
  }
  
  public static void a(Runnable paramRunnable) {
    l.execute(paramRunnable);
  }
  
  public static void a(Executor paramExecutor) {
    l = paramExecutor;
  }
  
  public static void b() {
    k.getLooper();
  }
  
  private void c(Result paramResult) {
    if (!this.q.get())
      d(paramResult); 
  }
  
  private Result d(Result paramResult) {
    k.obtainMessage(1, new gnj(this, new Object[] { paramResult })).sendToTarget();
    return paramResult;
  }
  
  private void e(Result paramResult) {
    if (e() || jcd.b()) {
      b(paramResult);
    } else {
      a(paramResult);
    } 
    this.o = gnn.FINISHED;
  }
  
  @SafeVarargs
  public final gne<Params, Progress, Result> a(Executor paramExecutor, Params... paramVarArgs) {
    if (this.o != gnn.PENDING) {
      switch (gni.a[this.o.ordinal()]) {
        default:
          this.o = gnn.RUNNING;
          a();
          this.m.b = (Object[])paramVarArgs;
          paramExecutor.execute(this.n);
          return this;
        case 1:
          throw new IllegalStateException("Cannot execute task: the task is already running.");
        case 2:
          break;
      } 
      throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
    } 
  }
  
  public final Result a(long paramLong, TimeUnit paramTimeUnit) {
    return this.n.get(paramLong, paramTimeUnit);
  }
  
  protected abstract Result a(Params... paramVarArgs);
  
  protected void a() {}
  
  protected void a(Result paramResult) {}
  
  protected void b(Result paramResult) {
    d();
  }
  
  protected void b(Progress... paramVarArgs) {}
  
  public final boolean b(boolean paramBoolean) {
    this.p.set(true);
    return this.n.cancel(paramBoolean);
  }
  
  @SafeVarargs
  public final gne<Params, Progress, Result> c(Params... paramVarArgs) {
    return a(e, paramVarArgs);
  }
  
  public final gnn c() {
    return this.o;
  }
  
  protected void d() {}
  
  @SafeVarargs
  protected final void d(Progress... paramVarArgs) {
    if (!e())
      k.obtainMessage(2, new gnj<Progress>(this, paramVarArgs)).sendToTarget(); 
  }
  
  public final boolean e() {
    return this.p.get();
  }
  
  public final Result f() {
    return this.n.get();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gne.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */