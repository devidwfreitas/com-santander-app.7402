import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;

public abstract class cqn<O extends coy> {
  protected final dcq a;
  
  private final Context b;
  
  private final cox<O> c;
  
  private final O d;
  
  private final dth<O> e;
  
  private final Looper f;
  
  private final int g;
  
  private final cpt h;
  
  private final ded i;
  
  private final Account j;
  
  @Deprecated
  @MainThread
  public cqn(@NonNull Activity paramActivity, cox<O> paramcox, O paramO, Looper paramLooper, ded paramded) {
    this(paramActivity, paramcox, paramO, (new cqq()).a(paramLooper).a(paramded).a());
  }
  
  @MainThread
  public cqn(@NonNull Activity paramActivity, cox<O> paramcox, O paramO, cqp paramcqp) {
    csp.a(paramActivity, "Null activity is not permitted.");
    csp.a(paramcox, "Api must not be null.");
    csp.a(paramcqp, "Settings must not be null; use Settings.createDefault() instead.");
    this.b = paramActivity.getApplicationContext();
    this.c = paramcox;
    this.d = paramO;
    this.f = paramcqp.d;
    this.e = dth.a(this.c, (coy)this.d);
    this.h = (cpt)new dcy(this);
    this.a = dcq.a(this.b);
    this.g = this.a.c();
    this.i = paramcqp.b;
    this.j = paramcqp.c;
    dbl.a(paramActivity, this.a, this.e);
    this.a.a(this);
  }
  
  @Deprecated
  public cqn(@NonNull Activity paramActivity, cox<O> paramcox, O paramO, ded paramded) {
    this(paramActivity, paramcox, paramO, (new cqq()).a(paramded).a(paramActivity.getMainLooper()).a());
  }
  
  protected cqn(@NonNull Context paramContext, cox<O> paramcox, Looper paramLooper) {
    csp.a(paramContext, "Null context is not permitted.");
    csp.a(paramcox, "Api must not be null.");
    csp.a(paramLooper, "Looper must not be null.");
    this.b = paramContext.getApplicationContext();
    this.c = paramcox;
    this.d = null;
    this.f = paramLooper;
    this.e = dth.a(paramcox);
    this.h = (cpt)new dcy(this);
    this.a = dcq.a(this.b);
    this.g = this.a.c();
    this.i = (ded)new dtg();
    this.j = null;
  }
  
  @Deprecated
  public cqn(@NonNull Context paramContext, cox<O> paramcox, O paramO, Looper paramLooper, ded paramded) {
    this(paramContext, paramcox, paramO, (new cqq()).a(paramLooper).a(paramded).a());
  }
  
  public cqn(@NonNull Context paramContext, cox<O> paramcox, O paramO, cqp paramcqp) {
    csp.a(paramContext, "Null context is not permitted.");
    csp.a(paramcox, "Api must not be null.");
    csp.a(paramcqp, "Settings must not be null; use Settings.createDefault() instead.");
    this.b = paramContext.getApplicationContext();
    this.c = paramcox;
    this.d = paramO;
    this.f = paramcqp.d;
    this.e = dth.a(this.c, (coy)this.d);
    this.h = (cpt)new dcy(this);
    this.a = dcq.a(this.b);
    this.g = this.a.c();
    this.i = paramcqp.b;
    this.j = paramcqp.c;
    this.a.a(this);
  }
  
  @Deprecated
  public cqn(@NonNull Context paramContext, cox<O> paramcox, O paramO, ded paramded) {
    this(paramContext, paramcox, paramO, (new cqq()).a(paramded).a());
  }
  
  private <A extends cpe, T extends dan<? extends cqg, A>> T a(int paramInt, @NonNull T paramT) {
    paramT.j();
    this.a.a(this, paramInt, (dan)paramT);
    return paramT;
  }
  
  private <TResult, A extends cpe> egv<TResult> a(int paramInt, @NonNull deh<A, TResult> paramdeh) {
    egw egw = new egw();
    this.a.a(this, paramInt, paramdeh, egw, this.i);
    return egw.a();
  }
  
  public cox<O> a() {
    return this.c;
  }
  
  @WorkerThread
  public cph a(Looper paramLooper, dcs<O> paramdcs) {
    ctn ctn = (new cpu(this.b)).a(this.j).b();
    return this.c.b().a(this.b, paramLooper, ctn, this.d, (cpv)paramdcs, (cpw)paramdcs);
  }
  
  public <A extends cpe, T extends dan<? extends cqg, A>> T a(@NonNull T paramT) {
    return a(0, paramT);
  }
  
  public <L> ddn<L> a(@NonNull L paramL, String paramString) {
    return ddr.b(paramL, this.f, paramString);
  }
  
  public dea a(Context paramContext, Handler paramHandler) {
    return new dea(paramContext, paramHandler);
  }
  
  public egv<Void> a(@NonNull ddp<?> paramddp) {
    csp.a(paramddp, "Listener key cannot be null.");
    return this.a.a(this, paramddp);
  }
  
  public <A extends cpe, T extends ddv<A, ?>, U extends deq<A, ?>> egv<Void> a(@NonNull T paramT, U paramU) {
    csp.a(paramT);
    csp.a(paramU);
    csp.a(paramT.a(), "Listener has already been released.");
    csp.a(paramU.a(), "Listener has already been released.");
    csp.b(paramT.a().equals(paramU.a()), "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
    return this.a.a(this, (ddv)paramT, (deq)paramU);
  }
  
  public <TResult, A extends cpe> egv<TResult> a(deh<A, TResult> paramdeh) {
    return a(0, paramdeh);
  }
  
  public O b() {
    return this.d;
  }
  
  public <A extends cpe, T extends dan<? extends cqg, A>> T b(@NonNull T paramT) {
    return a(1, paramT);
  }
  
  public <TResult, A extends cpe> egv<TResult> b(deh<A, TResult> paramdeh) {
    return a(1, paramdeh);
  }
  
  public <A extends cpe, T extends dan<? extends cqg, A>> T c(@NonNull T paramT) {
    return a(2, paramT);
  }
  
  public dth<O> c() {
    return this.e;
  }
  
  public <TResult, A extends cpe> egv<TResult> c(deh<A, TResult> paramdeh) {
    return a(2, paramdeh);
  }
  
  public int d() {
    return this.g;
  }
  
  public cpt e() {
    return this.h;
  }
  
  public Looper f() {
    return this.f;
  }
  
  public Context g() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */