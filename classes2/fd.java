import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class fd<TResult> {
  public static final ExecutorService a = es.a();
  
  public static final Executor b;
  
  private static final Executor c = es.c();
  
  private static volatile fv d;
  
  private static fd<?> m;
  
  private static fd<Boolean> n;
  
  private static fd<Boolean> o;
  
  private static fd<?> p;
  
  private final Object e = new Object();
  
  private boolean f;
  
  private boolean g;
  
  private TResult h;
  
  private Exception i;
  
  private boolean j;
  
  private fx k;
  
  private List<fa<TResult, Void>> l = new ArrayList<fa<TResult, Void>>();
  
  static {
    b = eh.b();
    m = new fd(null);
    n = new fd((TResult)Boolean.valueOf(true));
    o = new fd((TResult)Boolean.valueOf(false));
    p = new fd(true);
  }
  
  fd() {}
  
  private fd(TResult paramTResult) {
    b(paramTResult);
  }
  
  private fd(boolean paramBoolean) {
    if (paramBoolean) {
      l();
      return;
    } 
    b((TResult)null);
  }
  
  public static fd<Void> a(long paramLong) {
    return a(paramLong, es.b(), (ev)null);
  }
  
  public static fd<Void> a(long paramLong, ev paramev) {
    return a(paramLong, es.b(), paramev);
  }
  
  static fd<Void> a(long paramLong, ScheduledExecutorService paramScheduledExecutorService, ev paramev) {
    if (paramev != null && paramev.a())
      return i(); 
    if (paramLong <= 0L)
      return a((Void)null); 
    fw<Void> fw = new fw();
    ScheduledFuture<?> scheduledFuture = paramScheduledExecutorService.schedule(new fe(fw), paramLong, TimeUnit.MILLISECONDS);
    if (paramev != null)
      paramev.a(new fm(scheduledFuture, fw)); 
    return fw.a();
  }
  
  public static <TResult> fd<TResult> a(Exception paramException) {
    fw<TResult> fw = new fw();
    fw.b(paramException);
    return fw.a();
  }
  
  public static <TResult> fd<TResult> a(TResult paramTResult) {
    if (paramTResult == null)
      return (fd)m; 
    if (paramTResult instanceof Boolean)
      return (fd)(((Boolean)paramTResult).booleanValue() ? n : o); 
    fw<TResult> fw = new fw();
    fw.b(paramTResult);
    return fw.a();
  }
  
  public static <TResult> fd<fd<TResult>> a(Collection<? extends fd<TResult>> paramCollection) {
    if (paramCollection.size() == 0)
      return a((fd<TResult>)null); 
    fw<fd<TResult>> fw = new fw();
    AtomicBoolean atomicBoolean = new AtomicBoolean(false);
    Iterator<? extends fd<TResult>> iterator = paramCollection.iterator();
    while (iterator.hasNext())
      ((fd)iterator.next()).a(new fp(atomicBoolean, fw)); 
    return fw.a();
  }
  
  public static <TResult> fd<TResult> a(Callable<TResult> paramCallable) {
    return a(paramCallable, a, (ev)null);
  }
  
  public static <TResult> fd<TResult> a(Callable<TResult> paramCallable, ev paramev) {
    return a(paramCallable, a, paramev);
  }
  
  public static <TResult> fd<TResult> a(Callable<TResult> paramCallable, Executor paramExecutor) {
    return a(paramCallable, paramExecutor, (ev)null);
  }
  
  public static <TResult> fd<TResult> a(Callable<TResult> paramCallable, Executor paramExecutor, ev paramev) {
    fw<TResult> fw = new fw();
    try {
      paramExecutor.execute(new fo(paramev, fw, paramCallable));
    } catch (Exception exception) {
      fw.b(new fb(exception));
    } 
    return fw.a();
  }
  
  public static fv a() {
    return d;
  }
  
  public static void a(fv paramfv) {
    d = paramfv;
  }
  
  public static fd<fd<?>> b(Collection<? extends fd<?>> paramCollection) {
    if (paramCollection.size() == 0)
      return a((fd<?>)null); 
    fw<fd<?>> fw = new fw();
    AtomicBoolean atomicBoolean = new AtomicBoolean(false);
    Iterator<? extends fd<?>> iterator = paramCollection.iterator();
    while (iterator.hasNext())
      ((fd)iterator.next()).a(new fq(atomicBoolean, fw)); 
    return fw.a();
  }
  
  public static <TResult> fd<TResult> b(Callable<TResult> paramCallable) {
    return a(paramCallable, c, (ev)null);
  }
  
  public static <TResult> fd<TResult> b(Callable<TResult> paramCallable, ev paramev) {
    return a(paramCallable, c, paramev);
  }
  
  public static <TResult> fu b() {
    fd fd1 = new fd();
    fd1.getClass();
    return (fu)new fu(fd1);
  }
  
  public static <TResult> fd<List<TResult>> c(Collection<? extends fd<TResult>> paramCollection) {
    return d(paramCollection).c(new fr(paramCollection));
  }
  
  private static <TContinuationResult, TResult> void c(fw<TContinuationResult> paramfw, fa<TResult, TContinuationResult> paramfa, fd<TResult> paramfd, Executor paramExecutor, ev paramev) {
    try {
      paramExecutor.execute(new fj(paramev, paramfw, paramfa, paramfd));
      return;
    } catch (Exception exception) {
      paramfw.b(new fb(exception));
      return;
    } 
  }
  
  public static fd<Void> d(Collection<? extends fd<?>> paramCollection) {
    if (paramCollection.size() == 0)
      return a((Void)null); 
    fw<Void> fw = new fw();
    ArrayList arrayList = new ArrayList();
    Object object = new Object();
    AtomicInteger atomicInteger = new AtomicInteger(paramCollection.size());
    AtomicBoolean atomicBoolean = new AtomicBoolean(false);
    Iterator<? extends fd<?>> iterator = paramCollection.iterator();
    while (iterator.hasNext())
      ((fd)iterator.next()).a(new fs(object, arrayList, atomicBoolean, atomicInteger, fw)); 
    return fw.a();
  }
  
  private static <TContinuationResult, TResult> void d(fw<TContinuationResult> paramfw, fa<TResult, fd<TContinuationResult>> paramfa, fd<TResult> paramfd, Executor paramExecutor, ev paramev) {
    try {
      paramExecutor.execute(new fk(paramev, paramfw, paramfa, paramfd));
      return;
    } catch (Exception exception) {
      paramfw.b(new fb(exception));
      return;
    } 
  }
  
  public static <TResult> fd<TResult> i() {
    return (fd)p;
  }
  
  private void m() {
    synchronized (this.e) {
      Iterator<fa<TResult, Void>> iterator = this.l.iterator();
      while (iterator.hasNext()) {
        fa fa = iterator.next();
        try {
          fa.b(this);
        } catch (RuntimeException runtimeException) {
          throw runtimeException;
        } catch (Exception exception) {
          throw new RuntimeException(exception);
        } 
      } 
    } 
    this.l = null;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
  }
  
  public <TContinuationResult> fd<TContinuationResult> a(fa<TResult, TContinuationResult> paramfa) {
    return a(paramfa, c, (ev)null);
  }
  
  public <TContinuationResult> fd<TContinuationResult> a(fa<TResult, TContinuationResult> paramfa, ev paramev) {
    return a(paramfa, c, paramev);
  }
  
  public <TContinuationResult> fd<TContinuationResult> a(fa<TResult, TContinuationResult> paramfa, Executor paramExecutor) {
    return a(paramfa, paramExecutor, (ev)null);
  }
  
  public <TContinuationResult> fd<TContinuationResult> a(fa<TResult, TContinuationResult> paramfa, Executor paramExecutor, ev paramev) {
    fw<TContinuationResult> fw = new fw();
    synchronized (this.e) {
      boolean bool = c();
      if (!bool)
        this.l.add(new ff(this, fw, paramfa, paramExecutor, paramev)); 
      if (bool)
        c(fw, paramfa, this, paramExecutor, paramev); 
      return fw.a();
    } 
  }
  
  public fd<Void> a(Callable<Boolean> paramCallable, fa<Void, fd<Void>> paramfa) {
    return a(paramCallable, paramfa, c, null);
  }
  
  public fd<Void> a(Callable<Boolean> paramCallable, fa<Void, fd<Void>> paramfa, ev paramev) {
    return a(paramCallable, paramfa, c, paramev);
  }
  
  public fd<Void> a(Callable<Boolean> paramCallable, fa<Void, fd<Void>> paramfa, Executor paramExecutor) {
    return a(paramCallable, paramfa, paramExecutor, null);
  }
  
  public fd<Void> a(Callable<Boolean> paramCallable, fa<Void, fd<Void>> paramfa, Executor paramExecutor, ev paramev) {
    ez<ft> ez = new ez();
    ez.a(new ft(this, paramev, paramCallable, paramfa, paramExecutor, ez));
    return k().b(ez.a(), paramExecutor);
  }
  
  public boolean a(long paramLong, TimeUnit paramTimeUnit) {
    synchronized (this.e) {
      if (!c())
        this.e.wait(paramTimeUnit.toMillis(paramLong)); 
      return c();
    } 
  }
  
  public <TContinuationResult> fd<TContinuationResult> b(fa<TResult, fd<TContinuationResult>> paramfa) {
    return b(paramfa, c, null);
  }
  
  public <TContinuationResult> fd<TContinuationResult> b(fa<TResult, fd<TContinuationResult>> paramfa, ev paramev) {
    return b(paramfa, c, paramev);
  }
  
  public <TContinuationResult> fd<TContinuationResult> b(fa<TResult, fd<TContinuationResult>> paramfa, Executor paramExecutor) {
    return b(paramfa, paramExecutor, null);
  }
  
  public <TContinuationResult> fd<TContinuationResult> b(fa<TResult, fd<TContinuationResult>> paramfa, Executor paramExecutor, ev paramev) {
    fw<TContinuationResult> fw = new fw();
    synchronized (this.e) {
      boolean bool = c();
      if (!bool)
        this.l.add(new fg(this, fw, paramfa, paramExecutor, paramev)); 
      if (bool)
        d(fw, paramfa, this, paramExecutor, paramev); 
      return fw.a();
    } 
  }
  
  boolean b(Exception paramException) {
    synchronized (this.e) {
      if (this.f)
        return false; 
      this.f = true;
      this.i = paramException;
      this.j = false;
      this.e.notifyAll();
      m();
      if (!this.j && a() != null)
        this.k = new fx(this); 
      return true;
    } 
  }
  
  boolean b(TResult paramTResult) {
    synchronized (this.e) {
      if (this.f)
        return false; 
      this.f = true;
      this.h = paramTResult;
      this.e.notifyAll();
      m();
      return true;
    } 
  }
  
  public <TContinuationResult> fd<TContinuationResult> c(fa<TResult, TContinuationResult> paramfa) {
    return c(paramfa, c, null);
  }
  
  public <TContinuationResult> fd<TContinuationResult> c(fa<TResult, TContinuationResult> paramfa, ev paramev) {
    return c(paramfa, c, paramev);
  }
  
  public <TContinuationResult> fd<TContinuationResult> c(fa<TResult, TContinuationResult> paramfa, Executor paramExecutor) {
    return c(paramfa, paramExecutor, null);
  }
  
  public <TContinuationResult> fd<TContinuationResult> c(fa<TResult, TContinuationResult> paramfa, Executor paramExecutor, ev paramev) {
    return b(new fh(this, paramev, paramfa), paramExecutor);
  }
  
  public boolean c() {
    synchronized (this.e) {
      return this.f;
    } 
  }
  
  public <TContinuationResult> fd<TContinuationResult> d(fa<TResult, fd<TContinuationResult>> paramfa) {
    return d(paramfa, c);
  }
  
  public <TContinuationResult> fd<TContinuationResult> d(fa<TResult, fd<TContinuationResult>> paramfa, ev paramev) {
    return d(paramfa, c, paramev);
  }
  
  public <TContinuationResult> fd<TContinuationResult> d(fa<TResult, fd<TContinuationResult>> paramfa, Executor paramExecutor) {
    return d(paramfa, paramExecutor, null);
  }
  
  public <TContinuationResult> fd<TContinuationResult> d(fa<TResult, fd<TContinuationResult>> paramfa, Executor paramExecutor, ev paramev) {
    return b(new fi(this, paramev, paramfa), paramExecutor);
  }
  
  public boolean d() {
    synchronized (this.e) {
      return this.g;
    } 
  }
  
  public boolean e() {
    synchronized (this.e) {
      if (g() != null)
        return true; 
    } 
    boolean bool = false;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    return bool;
  }
  
  public TResult f() {
    synchronized (this.e) {
      return this.h;
    } 
  }
  
  public Exception g() {
    synchronized (this.e) {
      if (this.i != null) {
        this.j = true;
        if (this.k != null) {
          this.k.a();
          this.k = null;
        } 
      } 
      return this.i;
    } 
  }
  
  public void h() {
    synchronized (this.e) {
      if (!c())
        this.e.wait(); 
      return;
    } 
  }
  
  public <TOut> fd<TOut> j() {
    return this;
  }
  
  public fd<Void> k() {
    return b(new fn(this));
  }
  
  boolean l() {
    synchronized (this.e) {
      if (this.f)
        return false; 
      this.f = true;
      this.g = true;
      this.e.notifyAll();
      m();
      return true;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */