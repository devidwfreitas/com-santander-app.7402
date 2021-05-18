import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public class dcs<O extends coy> implements cpv, cpw, day {
  private final Queue<dta> d = new LinkedList<dta>();
  
  private final cph e;
  
  private final cpe f;
  
  private final dth<O> g;
  
  private final dbi h;
  
  private final Set<daj> i = new HashSet<daj>();
  
  private final Map<ddp<?>, ddw> j = new HashMap<ddp<?>, ddw>();
  
  private final int k;
  
  private final dea l;
  
  private boolean m;
  
  private ConnectionResult n = null;
  
  @WorkerThread
  public dcs(dcq paramdcq, cqn<O> paramcqn) {
    this.e = paramcqn.a(dcq.a(paramdcq).getLooper(), this);
    if (this.e instanceof csu) {
      this.f = (cpe)((csu)this.e).k();
    } else {
      this.f = (cpe)this.e;
    } 
    this.g = paramcqn.c();
    this.h = new dbi();
    this.k = paramcqn.d();
    if (this.e.d()) {
      this.l = paramcqn.a(dcq.b(paramdcq), dcq.a(paramdcq));
      return;
    } 
    this.l = null;
  }
  
  @WorkerThread
  private void b(dta paramdta) {
    paramdta.a(this.h, k());
    try {
      paramdta.a(this);
      return;
    } catch (DeadObjectException deadObjectException) {
      a(1);
      this.e.a();
      return;
    } 
  }
  
  @WorkerThread
  private void c(ConnectionResult paramConnectionResult) {
    Iterator<daj> iterator = this.i.iterator();
    while (iterator.hasNext())
      ((daj)iterator.next()).a(this.g, paramConnectionResult); 
    this.i.clear();
  }
  
  @WorkerThread
  private void n() {
    d();
    c(ConnectionResult.u);
    q();
    Iterator iterator = this.j.values().iterator();
    while (true) {
      if (iterator.hasNext()) {
        iterator.next();
        try {
          new egw();
          continue;
        } catch (DeadObjectException deadObjectException) {
          a(1);
          this.e.a();
          p();
          r();
          return;
        } catch (RemoteException remoteException) {
          continue;
        } 
      } 
      p();
      r();
      return;
    } 
  }
  
  @WorkerThread
  private void o() {
    d();
    this.m = true;
    this.h.c();
    dcq.a(this.c).sendMessageDelayed(Message.obtain(dcq.a(this.c), 9, this.g), dcq.c(this.c));
    dcq.a(this.c).sendMessageDelayed(Message.obtain(dcq.a(this.c), 11, this.g), dcq.d(this.c));
    dcq.a(this.c, -1);
  }
  
  @WorkerThread
  private void p() {
    while (this.e.b() && !this.d.isEmpty())
      b(this.d.remove()); 
  }
  
  @WorkerThread
  private void q() {
    if (this.m) {
      dcq.a(this.c).removeMessages(11, this.g);
      dcq.a(this.c).removeMessages(9, this.g);
      this.m = false;
    } 
  }
  
  private void r() {
    dcq.a(this.c).removeMessages(12, this.g);
    dcq.a(this.c).sendMessageDelayed(dcq.a(this.c).obtainMessage(12, this.g), dcq.h(this.c));
  }
  
  @WorkerThread
  public void a() {
    csp.a(dcq.a(this.c));
    a(dcq.a);
    this.h.b();
    Iterator<ddp> iterator = this.j.keySet().iterator();
    while (iterator.hasNext())
      a(new dtf(iterator.next(), new egw<Void>())); 
    c(new ConnectionResult(4));
    this.e.a();
  }
  
  public void a(int paramInt) {
    if (Looper.myLooper() == dcq.a(this.c).getLooper()) {
      o();
      return;
    } 
    dcq.a(this.c).post(new dcu(this));
  }
  
  public void a(@Nullable Bundle paramBundle) {
    if (Looper.myLooper() == dcq.a(this.c).getLooper()) {
      n();
      return;
    } 
    dcq.a(this.c).post(new dct(this));
  }
  
  @WorkerThread
  public void a(@NonNull ConnectionResult paramConnectionResult) {
    csp.a(dcq.a(this.c));
    if (this.l != null)
      this.l.b(); 
    d();
    dcq.a(this.c, -1);
    c(paramConnectionResult);
    if (paramConnectionResult.c() == 4) {
      a(dcq.g());
      return;
    } 
    if (this.d.isEmpty()) {
      this.n = paramConnectionResult;
      return;
    } 
    synchronized (dcq.h()) {
      if (dcq.e(this.c) != null && dcq.f(this.c).contains(this.g)) {
        dcq.e(this.c).b(paramConnectionResult, this.k);
        return;
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    if (!this.c.a(paramConnectionResult, this.k)) {
      if (paramConnectionResult.c() == 18)
        this.m = true; 
      if (this.m) {
        dcq.a(this.c).sendMessageDelayed(Message.obtain(dcq.a(this.c), 9, this.g), dcq.c(this.c));
        return;
      } 
      String str = String.valueOf(this.g.a());
      a(new Status(17, (new StringBuilder(String.valueOf(str).length() + 38)).append("API: ").append(str).append(" is not available on this device.").toString()));
      return;
    } 
  }
  
  public void a(ConnectionResult paramConnectionResult, cox<?> paramcox, boolean paramBoolean) {
    if (Looper.myLooper() == dcq.a(this.c).getLooper()) {
      a(paramConnectionResult);
      return;
    } 
    dcq.a(this.c).post(new dcv(this, paramConnectionResult));
  }
  
  @WorkerThread
  public void a(Status paramStatus) {
    csp.a(dcq.a(this.c));
    Iterator<dta> iterator = this.d.iterator();
    while (iterator.hasNext())
      ((dta)iterator.next()).a(paramStatus); 
    this.d.clear();
  }
  
  @WorkerThread
  public void a(daj paramdaj) {
    csp.a(dcq.a(this.c));
    this.i.add(paramdaj);
  }
  
  @WorkerThread
  public void a(dta paramdta) {
    csp.a(dcq.a(this.c));
    if (this.e.b()) {
      b(paramdta);
      r();
      return;
    } 
    this.d.add(paramdta);
    if (this.n != null && this.n.a()) {
      a(this.n);
      return;
    } 
    i();
  }
  
  public cph b() {
    return this.e;
  }
  
  @WorkerThread
  public void b(@NonNull ConnectionResult paramConnectionResult) {
    csp.a(dcq.a(this.c));
    this.e.a();
    a(paramConnectionResult);
  }
  
  public Map<ddp<?>, ddw> c() {
    return this.j;
  }
  
  @WorkerThread
  public void d() {
    csp.a(dcq.a(this.c));
    this.n = null;
  }
  
  @WorkerThread
  public ConnectionResult e() {
    csp.a(dcq.a(this.c));
    return this.n;
  }
  
  @WorkerThread
  public void f() {
    csp.a(dcq.a(this.c));
    if (this.m)
      i(); 
  }
  
  @WorkerThread
  public void g() {
    csp.a(dcq.a(this.c));
    if (this.m) {
      Status status;
      q();
      if (dcq.g(this.c).a(dcq.b(this.c)) == 18) {
        status = new Status(8, "Connection timed out while waiting for Google Play services update to complete.");
      } else {
        status = new Status(8, "API failed to connect while resuming due to an unknown error.");
      } 
      a(status);
      this.e.a();
    } 
  }
  
  @WorkerThread
  public void h() {
    csp.a(dcq.a(this.c));
    if (this.e.b() && this.j.size() == 0) {
      if (this.h.a()) {
        r();
        return;
      } 
    } else {
      return;
    } 
    this.e.a();
  }
  
  @WorkerThread
  public void i() {
    csp.a(dcq.a(this.c));
    if (this.e.b() || this.e.c())
      return; 
    if (this.e.e() && dcq.i(this.c) != 0) {
      dcq.a(this.c, dcq.g(this.c).a(dcq.b(this.c)));
      if (dcq.i(this.c) != 0) {
        a(new ConnectionResult(dcq.i(this.c), null));
        return;
      } 
    } 
    dcw dcw = new dcw(this.c, this.e, this.g);
    if (this.e.d())
      this.l.a(dcw); 
    this.e.a(dcw);
  }
  
  boolean j() {
    return this.e.b();
  }
  
  public boolean k() {
    return this.e.d();
  }
  
  public int l() {
    return this.k;
  }
  
  dpx m() {
    return (this.l == null) ? null : this.l.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */