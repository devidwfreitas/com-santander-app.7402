import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class dcq implements Handler.Callback {
  public static final Status a = new Status(4, "Sign-out occurred while this API call was in progress.");
  
  private static final Status b = new Status(4, "The user must be signed in to make this API call.");
  
  private static final Object f = new Object();
  
  private static dcq g;
  
  private long c = 5000L;
  
  private long d = 120000L;
  
  private long e = 10000L;
  
  private final Context h;
  
  private final con i;
  
  private int j = -1;
  
  private final AtomicInteger k = new AtomicInteger(1);
  
  private final AtomicInteger l = new AtomicInteger(0);
  
  private final Map<dth<?>, dcs<?>> m = new ConcurrentHashMap<dth<?>, dcs<?>>(5, 0.75F, 1);
  
  private dbl n = null;
  
  private final Set<dth<?>> o = new cvk<dth<?>>();
  
  private final Set<dth<?>> p = new cvk<dth<?>>();
  
  private final Handler q;
  
  private dcq(Context paramContext, Looper paramLooper, con paramcon) {
    this.h = paramContext;
    this.q = new Handler(paramLooper, this);
    this.i = paramcon;
    this.q.sendMessage(this.q.obtainMessage(6));
  }
  
  public static dcq a() {
    synchronized (f) {
      csp.a(g, "Must guarantee manager is non-null before using getInstance");
      return g;
    } 
  }
  
  public static dcq a(Context paramContext) {
    synchronized (f) {
      if (g == null) {
        Looper looper = i();
        g = new dcq(paramContext.getApplicationContext(), looper, con.a());
      } 
      return g;
    } 
  }
  
  @WorkerThread
  private void a(int paramInt, ConnectionResult paramConnectionResult) {
    // Byte code:
    //   0: aload_0
    //   1: getfield m : Ljava/util/Map;
    //   4: invokeinterface values : ()Ljava/util/Collection;
    //   9: invokeinterface iterator : ()Ljava/util/Iterator;
    //   14: astore #4
    //   16: aload #4
    //   18: invokeinterface hasNext : ()Z
    //   23: ifeq -> 175
    //   26: aload #4
    //   28: invokeinterface next : ()Ljava/lang/Object;
    //   33: checkcast dcs
    //   36: astore_3
    //   37: aload_3
    //   38: invokevirtual l : ()I
    //   41: iload_1
    //   42: if_icmpne -> 16
    //   45: aload_3
    //   46: ifnull -> 135
    //   49: aload_0
    //   50: getfield i : Lcon;
    //   53: aload_2
    //   54: invokevirtual c : ()I
    //   57: invokevirtual c : (I)Ljava/lang/String;
    //   60: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   63: astore #4
    //   65: aload_2
    //   66: invokevirtual e : ()Ljava/lang/String;
    //   69: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   72: astore_2
    //   73: aload_3
    //   74: new com/google/android/gms/common/api/Status
    //   77: dup
    //   78: bipush #17
    //   80: new java/lang/StringBuilder
    //   83: dup
    //   84: aload #4
    //   86: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   89: invokevirtual length : ()I
    //   92: bipush #69
    //   94: iadd
    //   95: aload_2
    //   96: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   99: invokevirtual length : ()I
    //   102: iadd
    //   103: invokespecial <init> : (I)V
    //   106: ldc 'Error resolution was canceled by the user, original error message: '
    //   108: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: aload #4
    //   113: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: ldc ': '
    //   118: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: aload_2
    //   122: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual toString : ()Ljava/lang/String;
    //   128: invokespecial <init> : (ILjava/lang/String;)V
    //   131: invokevirtual a : (Lcom/google/android/gms/common/api/Status;)V
    //   134: return
    //   135: ldc 'GoogleApiManager'
    //   137: new java/lang/StringBuilder
    //   140: dup
    //   141: bipush #76
    //   143: invokespecial <init> : (I)V
    //   146: ldc 'Could not find API instance '
    //   148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: iload_1
    //   152: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   155: ldc ' while trying to fail enqueued calls.'
    //   157: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: invokevirtual toString : ()Ljava/lang/String;
    //   163: new java/lang/Exception
    //   166: dup
    //   167: invokespecial <init> : ()V
    //   170: invokestatic wtf : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   173: pop
    //   174: return
    //   175: aconst_null
    //   176: astore_3
    //   177: goto -> 45
  }
  
  @WorkerThread
  private void a(daj paramdaj) {
    Iterator<dth<?>> iterator = paramdaj.a().iterator();
    while (true) {
      dth<?> dth;
      dcs dcs;
      if (iterator.hasNext()) {
        dth = iterator.next();
        dcs = this.m.get(dth);
        if (dcs == null) {
          paramdaj.a(dth, new ConnectionResult(13));
          return;
        } 
      } else {
        return;
      } 
      if (dcs.j()) {
        paramdaj.a(dth, ConnectionResult.u);
        continue;
      } 
      if (dcs.e() != null) {
        paramdaj.a(dth, dcs.e());
        continue;
      } 
      dcs.a(paramdaj);
    } 
  }
  
  @WorkerThread
  private void a(ddu paramddu) {
    dcs dcs2 = this.m.get(paramddu.c.c());
    dcs dcs1 = dcs2;
    if (dcs2 == null) {
      b(paramddu.c);
      dcs1 = this.m.get(paramddu.c.c());
    } 
    if (dcs1.k() && this.l.get() != paramddu.b) {
      paramddu.a.a(a);
      dcs1.a();
      return;
    } 
    dcs1.a(paramddu.a);
  }
  
  @WorkerThread
  private void a(boolean paramBoolean) {
    long l;
    if (paramBoolean) {
      l = 10000L;
    } else {
      l = 300000L;
    } 
    this.e = l;
    this.q.removeMessages(12);
    for (dth<?> dth : this.m.keySet())
      this.q.sendMessageDelayed(this.q.obtainMessage(12, dth), this.e); 
  }
  
  public static void b() {
    synchronized (f) {
      if (g != null)
        g.e(); 
      return;
    } 
  }
  
  @WorkerThread
  private void b(cqn<?> paramcqn) {
    dth<?> dth = paramcqn.c();
    dcs<?> dcs2 = this.m.get(dth);
    dcs<?> dcs1 = dcs2;
    if (dcs2 == null) {
      dcs1 = new dcs(this, paramcqn);
      this.m.put(dth, dcs1);
    } 
    if (dcs1.k())
      this.p.add(dth); 
    dcs1.i();
  }
  
  private static Looper i() {
    HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
    handlerThread.start();
    return handlerThread.getLooper();
  }
  
  @WorkerThread
  private void j() {
    cwd.c();
    if (this.h.getApplicationContext() instanceof Application) {
      dak.a((Application)this.h.getApplicationContext());
      dak.a().a(new dcr(this));
      if (!dak.a().a(true))
        this.e = 300000L; 
    } 
  }
  
  @WorkerThread
  private void k() {
    for (dcs<?> dcs : this.m.values()) {
      dcs.d();
      dcs.i();
    } 
  }
  
  @WorkerThread
  private void l() {
    for (dth<?> dth : this.p)
      ((dcs)this.m.remove(dth)).a(); 
    this.p.clear();
  }
  
  PendingIntent a(dth<?> paramdth, int paramInt) {
    if ((dcs)this.m.get(paramdth) == null)
      return null; 
    dpx dpx = ((dcs)this.m.get(paramdth)).m();
    return (dpx == null) ? null : PendingIntent.getActivity(this.h, paramInt, dpx.g(), 134217728);
  }
  
  public <O extends coy> egv<Void> a(@NonNull cqn<O> paramcqn, @NonNull ddp<?> paramddp) {
    egw<Void> egw = new egw();
    dtf dtf = new dtf(paramddp, egw);
    this.q.sendMessage(this.q.obtainMessage(13, new ddu(dtf, this.l.get(), paramcqn)));
    return egw.a();
  }
  
  public <O extends coy> egv<Void> a(@NonNull cqn<O> paramcqn, @NonNull ddv<cpe, ?> paramddv, @NonNull deq<cpe, ?> paramdeq) {
    egw<Void> egw = new egw();
    dtd dtd = new dtd(new ddw(paramddv, paramdeq), egw);
    this.q.sendMessage(this.q.obtainMessage(8, new ddu(dtd, this.l.get(), paramcqn)));
    return egw.a();
  }
  
  public egv<Void> a(Iterable<? extends cqn<?>> paramIterable) {
    daj daj = new daj(paramIterable);
    for (cqn<?> cqn : paramIterable) {
      dcs dcs = this.m.get(cqn.c());
      if (dcs == null || !dcs.j()) {
        this.q.sendMessage(this.q.obtainMessage(2, daj));
        return daj.b();
      } 
    } 
    daj.c();
    return daj.b();
  }
  
  public void a(cqn<?> paramcqn) {
    this.q.sendMessage(this.q.obtainMessage(7, paramcqn));
  }
  
  public <O extends coy> void a(cqn<O> paramcqn, int paramInt, dan<? extends cqg, cpe> paramdan) {
    dtc<dan<? extends cqg, cpe>> dtc = new dtc<dan<? extends cqg, cpe>>(paramInt, paramdan);
    this.q.sendMessage(this.q.obtainMessage(4, new ddu(dtc, this.l.get(), paramcqn)));
  }
  
  public <O extends coy, TResult> void a(cqn<O> paramcqn, int paramInt, deh<cpe, TResult> paramdeh, egw<TResult> paramegw, ded paramded) {
    dte<TResult> dte = new dte<TResult>(paramInt, paramdeh, paramegw, paramded);
    this.q.sendMessage(this.q.obtainMessage(4, new ddu(dte, this.l.get(), paramcqn)));
  }
  
  public void a(@NonNull dbl paramdbl) {
    synchronized (f) {
      if (this.n != paramdbl) {
        this.n = paramdbl;
        this.o.clear();
        this.o.addAll(paramdbl.e());
      } 
      return;
    } 
  }
  
  boolean a(ConnectionResult paramConnectionResult, int paramInt) {
    return this.i.a(this.h, paramConnectionResult, paramInt);
  }
  
  public void b(ConnectionResult paramConnectionResult, int paramInt) {
    if (!a(paramConnectionResult, paramInt))
      this.q.sendMessage(this.q.obtainMessage(5, paramInt, 0, paramConnectionResult)); 
  }
  
  void b(@NonNull dbl paramdbl) {
    synchronized (f) {
      if (this.n == paramdbl) {
        this.n = null;
        this.o.clear();
      } 
      return;
    } 
  }
  
  public int c() {
    return this.k.getAndIncrement();
  }
  
  public void d() {
    this.q.sendMessage(this.q.obtainMessage(3));
  }
  
  public void e() {
    this.l.incrementAndGet();
    this.q.sendMessageAtFrontOfQueue(this.q.obtainMessage(10));
  }
  
  void f() {
    this.l.incrementAndGet();
    this.q.sendMessage(this.q.obtainMessage(10));
  }
  
  @WorkerThread
  public boolean handleMessage(Message paramMessage) {
    int i;
    switch (paramMessage.what) {
      default:
        i = paramMessage.what;
        Log.w("GoogleApiManager", (new StringBuilder(31)).append("Unknown message id: ").append(i).toString());
        return false;
      case 1:
        a(((Boolean)paramMessage.obj).booleanValue());
        return true;
      case 2:
        a((daj)paramMessage.obj);
        return true;
      case 3:
        k();
        return true;
      case 4:
      case 8:
      case 13:
        a((ddu)paramMessage.obj);
        return true;
      case 5:
        a(paramMessage.arg1, (ConnectionResult)paramMessage.obj);
        return true;
      case 6:
        j();
        return true;
      case 7:
        b((cqn)paramMessage.obj);
        return true;
      case 9:
        if (this.m.containsKey(paramMessage.obj))
          ((dcs)this.m.get(paramMessage.obj)).f(); 
        return true;
      case 10:
        l();
        return true;
      case 11:
        if (this.m.containsKey(paramMessage.obj))
          ((dcs)this.m.get(paramMessage.obj)).g(); 
        return true;
      case 12:
        break;
    } 
    if (this.m.containsKey(paramMessage.obj))
      ((dcs)this.m.get(paramMessage.obj)).h(); 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */