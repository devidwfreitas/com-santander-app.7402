import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.internal.zzbaw;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

public class dbs implements dcl {
  private final dcm a;
  
  private final Lock b;
  
  private final Context c;
  
  private final cwn d;
  
  private ConnectionResult e;
  
  private int f;
  
  private int g = 0;
  
  private int h;
  
  private final Bundle i = new Bundle();
  
  private final Set<cpf> j = new HashSet<cpf>();
  
  private dpx k;
  
  private boolean l;
  
  private boolean m;
  
  private boolean n;
  
  private cug o;
  
  private boolean p;
  
  private boolean q;
  
  private final ctn r;
  
  private final Map<cox<?>, Boolean> s;
  
  private final cpd<? extends dpx, dpy> t;
  
  private ArrayList<Future<?>> u = new ArrayList<Future<?>>();
  
  public dbs(dcm paramdcm, ctn paramctn, Map<cox<?>, Boolean> paramMap, cwn paramcwn, cpd<? extends dpx, dpy> paramcpd, Lock paramLock, Context paramContext) {
    this.a = paramdcm;
    this.r = paramctn;
    this.s = paramMap;
    this.d = paramcwn;
    this.t = paramcpd;
    this.b = paramLock;
    this.c = paramContext;
  }
  
  private void a(zzbaw paramzzbaw) {
    String str;
    if (!b(0))
      return; 
    ConnectionResult connectionResult = paramzzbaw.a();
    if (connectionResult.b()) {
      zzaf zzaf = paramzzbaw.b();
      ConnectionResult connectionResult1 = zzaf.b();
      if (!connectionResult1.b()) {
        str = String.valueOf(connectionResult1);
        Log.wtf("GoogleApiClientConnecting", (new StringBuilder(String.valueOf(str).length() + 48)).append("Sign-in succeeded with resolve account failure: ").append(str).toString(), new Exception());
        c(connectionResult1);
        return;
      } 
      this.n = true;
      this.o = str.a();
      this.p = str.c();
      this.q = str.d();
      e();
      return;
    } 
    if (b((ConnectionResult)str)) {
      h();
      e();
      return;
    } 
    c((ConnectionResult)str);
  }
  
  private void a(boolean paramBoolean) {
    if (this.k != null) {
      if (this.k.b() && paramBoolean)
        this.k.k(); 
      this.k.a();
      this.o = null;
    } 
  }
  
  private boolean a(int paramInt, boolean paramBoolean, ConnectionResult paramConnectionResult) {
    return ((!paramBoolean || a(paramConnectionResult)) && (this.e == null || paramInt < this.f));
  }
  
  private boolean a(ConnectionResult paramConnectionResult) {
    return !(!paramConnectionResult.a() && this.d.b(paramConnectionResult.c()) == null);
  }
  
  private void b(ConnectionResult paramConnectionResult, cox<?> paramcox, boolean paramBoolean) {
    int i = paramcox.a().a();
    if (a(i, paramBoolean, paramConnectionResult)) {
      this.e = paramConnectionResult;
      this.f = i;
    } 
    this.a.d.put(paramcox.c(), paramConnectionResult);
  }
  
  private boolean b(int paramInt) {
    if (this.g != paramInt) {
      Log.w("GoogleApiClientConnecting", this.a.i.q());
      String str1 = String.valueOf(this);
      Log.w("GoogleApiClientConnecting", (new StringBuilder(String.valueOf(str1).length() + 23)).append("Unexpected callback in ").append(str1).toString());
      int i = this.h;
      Log.w("GoogleApiClientConnecting", (new StringBuilder(33)).append("mRemainingConnections=").append(i).toString());
      str1 = String.valueOf(c(this.g));
      String str2 = String.valueOf(c(paramInt));
      Log.wtf("GoogleApiClientConnecting", (new StringBuilder(String.valueOf(str1).length() + 70 + String.valueOf(str2).length())).append("GoogleApiClient connecting is in step ").append(str1).append(" but received callback for step ").append(str2).toString(), new Exception());
      c(new ConnectionResult(8, null));
      return false;
    } 
    return true;
  }
  
  private boolean b(ConnectionResult paramConnectionResult) {
    return (this.l && !paramConnectionResult.a());
  }
  
  private String c(int paramInt) {
    switch (paramInt) {
      default:
        return "UNKNOWN";
      case 0:
        return "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
      case 1:
        break;
    } 
    return "STEP_GETTING_REMOTE_SERVICE";
  }
  
  private void c(ConnectionResult paramConnectionResult) {
    boolean bool;
    i();
    if (!paramConnectionResult.a()) {
      bool = true;
    } else {
      bool = false;
    } 
    a(bool);
    this.a.a(paramConnectionResult);
    this.a.j.a(paramConnectionResult);
  }
  
  private boolean d() {
    this.h--;
    if (this.h > 0)
      return false; 
    if (this.h < 0) {
      Log.w("GoogleApiClientConnecting", this.a.i.q());
      Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
      c(new ConnectionResult(8, null));
      return false;
    } 
    if (this.e != null) {
      this.a.h = this.f;
      c(this.e);
      return false;
    } 
    return true;
  }
  
  private void e() {
    if (this.h == 0 && (!this.m || this.n)) {
      f();
      return;
    } 
  }
  
  private void f() {
    ArrayList<cph> arrayList = new ArrayList();
    this.g = 1;
    this.h = this.a.c.size();
    for (cpf<?> cpf : this.a.c.keySet()) {
      if (this.a.d.containsKey(cpf)) {
        if (d())
          g(); 
        continue;
      } 
      arrayList.add(this.a.c.get(cpf));
    } 
    if (!arrayList.isEmpty())
      this.u.add(dcp.a().submit(new dby(this, arrayList))); 
  }
  
  private void g() {
    Bundle bundle;
    this.a.i();
    dcp.a().execute(new dbt(this));
    if (this.k != null) {
      if (this.p)
        this.k.a(this.o, this.q); 
      a(false);
    } 
    for (cpf<?> cpf : this.a.d.keySet())
      ((cph)this.a.c.get(cpf)).a(); 
    if (this.i.isEmpty()) {
      bundle = null;
    } else {
      bundle = this.i;
    } 
    this.a.j.a(bundle);
  }
  
  private void h() {
    this.m = false;
    this.a.i.f = Collections.emptySet();
    for (cpf<?> cpf : this.j) {
      if (!this.a.d.containsKey(cpf))
        this.a.d.put(cpf, new ConnectionResult(17, null)); 
    } 
  }
  
  private void i() {
    Iterator<Future<?>> iterator = this.u.iterator();
    while (iterator.hasNext())
      ((Future)iterator.next()).cancel(true); 
    this.u.clear();
  }
  
  private Set<Scope> j() {
    if (this.r == null)
      return Collections.emptySet(); 
    HashSet<Scope> hashSet = new HashSet(this.r.e());
    Map map = this.r.g();
    for (cox cox : map.keySet()) {
      if (!this.a.d.containsKey(cox.c()))
        hashSet.addAll(((cto)map.get(cox)).a); 
    } 
    return hashSet;
  }
  
  public <A extends cpe, R extends cqg, T extends dan<R, A>> T a(T paramT) {
    this.a.i.c.add((dan<?, ?>)paramT);
    return paramT;
  }
  
  public void a() {
    this.a.d.clear();
    this.m = false;
    this.e = null;
    this.g = 0;
    this.l = true;
    this.n = false;
    this.p = false;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    Iterator<cox> iterator = this.s.keySet().iterator();
    int i;
    for (i = 0; iterator.hasNext(); i = j | i) {
      int j;
      cox<?> cox = iterator.next();
      cph cph = this.a.c.get(cox.c());
      if (cox.a().a() == 1) {
        j = 1;
      } else {
        j = 0;
      } 
      boolean bool = ((Boolean)this.s.get(cox)).booleanValue();
      if (cph.d()) {
        this.m = true;
        if (bool) {
          this.j.add(cox.c());
        } else {
          this.l = false;
        } 
      } 
      hashMap.put(cph, new dbu(this, cox, bool));
    } 
    if (i != 0)
      this.m = false; 
    if (this.m) {
      this.r.a(Integer.valueOf(this.a.i.r()));
      dcb dcb = new dcb(this, null);
      this.k = (dpx)this.t.a(this.c, this.a.i.c(), this.r, this.r.k(), dcb, dcb);
    } 
    this.h = this.a.c.size();
    this.u.add(dcp.a().submit(new dbv(this, (Map)hashMap)));
  }
  
  public void a(int paramInt) {
    c(new ConnectionResult(8, null));
  }
  
  public void a(Bundle paramBundle) {
    if (b(1)) {
      if (paramBundle != null)
        this.i.putAll(paramBundle); 
      if (d()) {
        g();
        return;
      } 
    } 
  }
  
  public void a(ConnectionResult paramConnectionResult, cox<?> paramcox, boolean paramBoolean) {
    if (b(1)) {
      b(paramConnectionResult, paramcox, paramBoolean);
      if (d()) {
        g();
        return;
      } 
    } 
  }
  
  public <A extends cpe, T extends dan<? extends cqg, A>> T b(T paramT) {
    throw new IllegalStateException("GoogleApiClient is not connected yet.");
  }
  
  public boolean b() {
    i();
    a(true);
    this.a.a((ConnectionResult)null);
    return true;
  }
  
  public void c() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */