import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.MainThread;
import android.support.annotation.WorkerThread;

public class dok extends dmu {
  protected long a;
  
  private Handler b;
  
  private final dkf c = new dol(this, this.n);
  
  private final dkf d = new dom(this, this.n);
  
  dok(dlv paramdlv) {
    super(paramdlv);
  }
  
  private void A() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield b : Landroid/os/Handler;
    //   6: ifnonnull -> 23
    //   9: aload_0
    //   10: new android/os/Handler
    //   13: dup
    //   14: invokestatic getMainLooper : ()Landroid/os/Looper;
    //   17: invokespecial <init> : (Landroid/os/Looper;)V
    //   20: putfield b : Landroid/os/Handler;
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: athrow
    // Exception table:
    //   from	to	target	type
    //   2	23	26	finally
    //   23	25	26	finally
    //   27	29	26	finally
  }
  
  @WorkerThread
  private void B() {
    e();
    a(false);
    f().a(m().b());
  }
  
  @WorkerThread
  private void a(long paramLong) {
    e();
    A();
    this.c.c();
    this.d.c();
    u().D().a("Activity resumed, time", Long.valueOf(paramLong));
    this.a = paramLong;
    if (m().a() - (v()).i.a() > (v()).k.a()) {
      (v()).j.a(true);
      (v()).l.a(0L);
    } 
    if ((v()).j.a()) {
      this.c.a(Math.max(0L, (v()).h.a() - (v()).l.a()));
      return;
    } 
    this.d.a(Math.max(0L, 3600000L - (v()).l.a()));
  }
  
  @WorkerThread
  private void b(long paramLong) {
    e();
    A();
    this.c.c();
    this.d.c();
    u().D().a("Activity paused, time", Long.valueOf(paramLong));
    if (this.a != 0L)
      (v()).l.a((v()).l.a() + paramLong - this.a); 
    (v()).k.a(m().a());
  }
  
  protected void a() {}
  
  @WorkerThread
  public boolean a(boolean paramBoolean) {
    e();
    R();
    long l1 = m().b();
    if (this.a == 0L)
      this.a = l1 - 3600000L; 
    long l2 = l1 - this.a;
    if (!paramBoolean && l2 < 1000L) {
      u().D().a("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(l2));
      return false;
    } 
    (v()).l.a(l2);
    u().D().a("Recording user engagement, ms", Long.valueOf(l2));
    Bundle bundle = new Bundle();
    bundle.putLong("_et", l2);
    dnk.a(l().x(), bundle);
    h().a("auto", "_e", bundle);
    this.a = l1;
    this.d.c();
    this.d.a(Math.max(0L, 3600000L - (v()).l.a()));
    return true;
  }
  
  @MainThread
  protected void x() {
    long l = m().b();
    t().a(new don(this, l));
  }
  
  @MainThread
  protected void y() {
    long l = m().b();
    t().a(new doo(this, l));
  }
  
  @WorkerThread
  protected void z() {
    e();
    long l = m().b();
    u().D().a("Session started, time", Long.valueOf(l));
    (v()).j.a(false);
    h().a("auto", "_s", new Bundle());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dok.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */