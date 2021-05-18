import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public abstract class dat<R extends cqg> extends cpy<R> {
  static final ThreadLocal<Boolean> a = (ThreadLocal<Boolean>)new dau();
  
  protected final dav<R> b;
  
  protected final WeakReference<cpt> c;
  
  private final Object d;
  
  private final CountDownLatch e;
  
  private final ArrayList<cpz> f;
  
  private cqh<? super R> g;
  
  private final AtomicReference<dep> h;
  
  private R i;
  
  private Status j;
  
  private daw k;
  
  private volatile boolean l;
  
  private boolean m;
  
  private boolean n;
  
  private cuj o;
  
  private volatile dej<R> p;
  
  private boolean q;
  
  @Deprecated
  dat() {
    this.d = new Object();
    this.e = new CountDownLatch(1);
    this.f = new ArrayList<cpz>();
    this.h = new AtomicReference<dep>();
    this.q = false;
    this.b = new dav(Looper.getMainLooper());
    this.c = new WeakReference<cpt>(null);
  }
  
  @Deprecated
  protected dat(Looper paramLooper) {
    this.d = new Object();
    this.e = new CountDownLatch(1);
    this.f = new ArrayList<cpz>();
    this.h = new AtomicReference<dep>();
    this.q = false;
    this.b = new dav(paramLooper);
    this.c = new WeakReference<cpt>(null);
  }
  
  protected dat(cpt paramcpt) {
    Looper looper;
    this.d = new Object();
    this.e = new CountDownLatch(1);
    this.f = new ArrayList<cpz>();
    this.h = new AtomicReference<dep>();
    this.q = false;
    if (paramcpt != null) {
      looper = paramcpt.c();
    } else {
      looper = Looper.getMainLooper();
    } 
    this.b = new dav(looper);
    this.c = new WeakReference<cpt>(paramcpt);
  }
  
  private void b() {
    dep dep = this.h.getAndSet(null);
    if (dep != null)
      dep.a(this); 
  }
  
  public static void b(cqg paramcqg) {
    if (paramcqg instanceof cqe)
      try {
        ((cqe)paramcqg).b();
        return;
      } catch (RuntimeException runtimeException) {
        String str = String.valueOf(paramcqg);
        Log.w("BasePendingResult", (new StringBuilder(String.valueOf(str).length() + 18)).append("Unable to release ").append(str).toString(), runtimeException);
        return;
      }  
  }
  
  private R c() {
    boolean bool = true;
    synchronized (this.d) {
      if (this.l)
        bool = false; 
      csp.a(bool, "Result has already been consumed.");
      csp.a(g(), "Result is not ready.");
      R r = this.i;
      this.i = null;
      this.g = null;
      this.l = true;
      b();
      return r;
    } 
  }
  
  private void c(R paramR) {
    this.i = paramR;
    this.o = null;
    this.e.countDown();
    this.j = this.i.a();
    if (this.m) {
      this.g = null;
    } else if (this.g == null) {
      if (this.i instanceof cqe)
        this.k = new daw(this, null); 
    } else {
      this.b.a();
      this.b.a(this.g, (cqg)c());
    } 
    Iterator<cpz> iterator = this.f.iterator();
    while (iterator.hasNext())
      ((cpz)iterator.next()).a(this.j); 
    this.f.clear();
  }
  
  public final R a(long paramLong, TimeUnit paramTimeUnit) {
    boolean bool1;
    boolean bool2 = true;
    if (paramLong <= 0L || Looper.myLooper() != Looper.getMainLooper()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, "await must not be called on the UI thread when time is greater than zero.");
    if (!this.l) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, "Result has already been consumed.");
    if (this.p == null) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, "Cannot await if then() has been called.");
    try {
      if (!this.e.await(paramLong, paramTimeUnit))
        c(Status.d); 
    } catch (InterruptedException interruptedException) {
      c(Status.b);
    } 
    csp.a(g(), "Result is not ready.");
    return c();
  }
  
  public <S extends cqg> cqk<S> a(cqj<? super R, ? extends S> paramcqj) {
    boolean bool1;
    boolean bool2 = true;
    if (!this.l) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, "Result has already been consumed.");
    synchronized (this.d) {
      if (this.p == null) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      csp.a(bool1, "Cannot call then() twice.");
      if (this.g == null) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      csp.a(bool1, "Cannot call then() if callbacks are set.");
      if (!this.m) {
        bool1 = bool2;
      } else {
        bool1 = false;
      } 
      csp.a(bool1, "Cannot call then() if result was canceled.");
      this.q = true;
      this.p = new dej(this.c);
      cqk<S> cqk = this.p.a(paramcqj);
      if (g()) {
        this.b.a((cqh)this.p, (cqg)c());
        return cqk;
      } 
      this.g = (cqh<? super R>)this.p;
      return cqk;
    } 
  }
  
  public void a() {
    synchronized (this.d) {
      if (this.m || this.l)
        return; 
      cuj cuj1 = this.o;
      if (cuj1 != null)
        try {
          this.o.a();
        } catch (RemoteException remoteException) {} 
      b((cqg)this.i);
      this.m = true;
      c(b(Status.e));
      return;
    } 
  }
  
  public final void a(cpz paramcpz) {
    boolean bool;
    if (paramcpz != null) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "Callback cannot be null.");
    synchronized (this.d) {
      if (g()) {
        paramcpz.a(this.j);
      } else {
        this.f.add(paramcpz);
      } 
      return;
    } 
  }
  
  public final void a(R paramR) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: getfield d : Ljava/lang/Object;
    //   6: astore #4
    //   8: aload #4
    //   10: monitorenter
    //   11: aload_0
    //   12: getfield n : Z
    //   15: ifne -> 73
    //   18: aload_0
    //   19: getfield m : Z
    //   22: ifne -> 73
    //   25: aload_0
    //   26: invokevirtual g : ()Z
    //   29: ifeq -> 32
    //   32: aload_0
    //   33: invokevirtual g : ()Z
    //   36: ifne -> 87
    //   39: iconst_1
    //   40: istore_2
    //   41: iload_2
    //   42: ldc_w 'Results have already been set'
    //   45: invokestatic a : (ZLjava/lang/Object;)V
    //   48: aload_0
    //   49: getfield l : Z
    //   52: ifne -> 92
    //   55: iload_3
    //   56: istore_2
    //   57: iload_2
    //   58: ldc_w 'Result has already been consumed'
    //   61: invokestatic a : (ZLjava/lang/Object;)V
    //   64: aload_0
    //   65: aload_1
    //   66: invokespecial c : (Lcqg;)V
    //   69: aload #4
    //   71: monitorexit
    //   72: return
    //   73: aload_1
    //   74: invokestatic b : (Lcqg;)V
    //   77: aload #4
    //   79: monitorexit
    //   80: return
    //   81: astore_1
    //   82: aload #4
    //   84: monitorexit
    //   85: aload_1
    //   86: athrow
    //   87: iconst_0
    //   88: istore_2
    //   89: goto -> 41
    //   92: iconst_0
    //   93: istore_2
    //   94: goto -> 57
    // Exception table:
    //   from	to	target	type
    //   11	32	81	finally
    //   32	39	81	finally
    //   41	55	81	finally
    //   57	72	81	finally
    //   73	80	81	finally
    //   82	85	81	finally
  }
  
  public final void a(cqh<? super R> paramcqh) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: getfield d : Ljava/lang/Object;
    //   6: astore #4
    //   8: aload #4
    //   10: monitorenter
    //   11: aload_1
    //   12: ifnonnull -> 24
    //   15: aload_0
    //   16: aconst_null
    //   17: putfield g : Lcqh;
    //   20: aload #4
    //   22: monitorexit
    //   23: return
    //   24: aload_0
    //   25: getfield l : Z
    //   28: ifne -> 72
    //   31: iconst_1
    //   32: istore_2
    //   33: iload_2
    //   34: ldc 'Result has already been consumed.'
    //   36: invokestatic a : (ZLjava/lang/Object;)V
    //   39: aload_0
    //   40: getfield p : Ldej;
    //   43: ifnonnull -> 77
    //   46: iload_3
    //   47: istore_2
    //   48: iload_2
    //   49: ldc_w 'Cannot set callbacks if then() has been called.'
    //   52: invokestatic a : (ZLjava/lang/Object;)V
    //   55: aload_0
    //   56: invokevirtual e : ()Z
    //   59: ifeq -> 82
    //   62: aload #4
    //   64: monitorexit
    //   65: return
    //   66: astore_1
    //   67: aload #4
    //   69: monitorexit
    //   70: aload_1
    //   71: athrow
    //   72: iconst_0
    //   73: istore_2
    //   74: goto -> 33
    //   77: iconst_0
    //   78: istore_2
    //   79: goto -> 48
    //   82: aload_0
    //   83: invokevirtual g : ()Z
    //   86: ifeq -> 105
    //   89: aload_0
    //   90: getfield b : Ldav;
    //   93: aload_1
    //   94: aload_0
    //   95: invokespecial c : ()Lcqg;
    //   98: invokevirtual a : (Lcqh;Lcqg;)V
    //   101: aload #4
    //   103: monitorexit
    //   104: return
    //   105: aload_0
    //   106: aload_1
    //   107: putfield g : Lcqh;
    //   110: goto -> 101
    // Exception table:
    //   from	to	target	type
    //   15	23	66	finally
    //   24	31	66	finally
    //   33	46	66	finally
    //   48	65	66	finally
    //   67	70	66	finally
    //   82	101	66	finally
    //   101	104	66	finally
    //   105	110	66	finally
  }
  
  public final void a(cqh<? super R> paramcqh, long paramLong, TimeUnit paramTimeUnit) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #6
    //   3: aload_0
    //   4: getfield d : Ljava/lang/Object;
    //   7: astore #7
    //   9: aload #7
    //   11: monitorenter
    //   12: aload_1
    //   13: ifnonnull -> 25
    //   16: aload_0
    //   17: aconst_null
    //   18: putfield g : Lcqh;
    //   21: aload #7
    //   23: monitorexit
    //   24: return
    //   25: aload_0
    //   26: getfield l : Z
    //   29: ifne -> 78
    //   32: iconst_1
    //   33: istore #5
    //   35: iload #5
    //   37: ldc 'Result has already been consumed.'
    //   39: invokestatic a : (ZLjava/lang/Object;)V
    //   42: aload_0
    //   43: getfield p : Ldej;
    //   46: ifnonnull -> 84
    //   49: iload #6
    //   51: istore #5
    //   53: iload #5
    //   55: ldc_w 'Cannot set callbacks if then() has been called.'
    //   58: invokestatic a : (ZLjava/lang/Object;)V
    //   61: aload_0
    //   62: invokevirtual e : ()Z
    //   65: ifeq -> 90
    //   68: aload #7
    //   70: monitorexit
    //   71: return
    //   72: astore_1
    //   73: aload #7
    //   75: monitorexit
    //   76: aload_1
    //   77: athrow
    //   78: iconst_0
    //   79: istore #5
    //   81: goto -> 35
    //   84: iconst_0
    //   85: istore #5
    //   87: goto -> 53
    //   90: aload_0
    //   91: invokevirtual g : ()Z
    //   94: ifeq -> 113
    //   97: aload_0
    //   98: getfield b : Ldav;
    //   101: aload_1
    //   102: aload_0
    //   103: invokespecial c : ()Lcqg;
    //   106: invokevirtual a : (Lcqh;Lcqg;)V
    //   109: aload #7
    //   111: monitorexit
    //   112: return
    //   113: aload_0
    //   114: aload_1
    //   115: putfield g : Lcqh;
    //   118: aload_0
    //   119: getfield b : Ldav;
    //   122: aload_0
    //   123: aload #4
    //   125: lload_2
    //   126: invokevirtual toMillis : (J)J
    //   129: invokevirtual a : (Ldat;J)V
    //   132: goto -> 109
    // Exception table:
    //   from	to	target	type
    //   16	24	72	finally
    //   25	32	72	finally
    //   35	49	72	finally
    //   53	71	72	finally
    //   73	76	72	finally
    //   90	109	72	finally
    //   109	112	72	finally
    //   113	132	72	finally
  }
  
  protected final void a(cuj paramcuj) {
    synchronized (this.d) {
      this.o = paramcuj;
      return;
    } 
  }
  
  public void a(dep paramdep) {
    this.h.set(paramdep);
  }
  
  @NonNull
  protected abstract R b(Status paramStatus);
  
  public final void c(Status paramStatus) {
    synchronized (this.d) {
      if (!g()) {
        a(b(paramStatus));
        this.n = true;
      } 
      return;
    } 
  }
  
  public final R d() {
    boolean bool1;
    boolean bool2 = true;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, "await must not be called on the UI thread");
    if (!this.l) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, "Result has already been consumed");
    if (this.p == null) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, "Cannot await if then() has been called.");
    try {
      this.e.await();
    } catch (InterruptedException interruptedException) {
      c(Status.b);
    } 
    csp.a(g(), "Result is not ready.");
    return c();
  }
  
  public boolean e() {
    synchronized (this.d) {
      return this.m;
    } 
  }
  
  public Integer f() {
    return null;
  }
  
  public final boolean g() {
    return (this.e.getCount() == 0L);
  }
  
  public boolean h() {
    synchronized (this.d) {
      if ((cpt)this.c.get() == null || !this.q)
        a(); 
      return e();
    } 
  }
  
  public void i() {
    a((cqh<? super R>)null);
  }
  
  public void j() {
    boolean bool;
    if (this.q || ((Boolean)a.get()).booleanValue()) {
      bool = true;
    } else {
      bool = false;
    } 
    this.q = bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\dat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */