import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

public final class dce extends cpt implements ddh {
  private final ctz A = new dcf(this);
  
  final Queue<dan<?, ?>> c = new LinkedList<dan<?, ?>>();
  
  dcz d;
  
  final Map<cpf<?>, cph> e;
  
  Set<Scope> f = new HashSet<Scope>();
  
  final ctn g;
  
  final Map<cox<?>, Boolean> h;
  
  final cpd<? extends dpx, dpy> i;
  
  Set<dej> j = null;
  
  final dem k;
  
  private final Lock l;
  
  private boolean m;
  
  private final cty n;
  
  private ddg o = null;
  
  private final int p;
  
  private final Context q;
  
  private final Looper r;
  
  private volatile boolean s;
  
  private long t = 120000L;
  
  private long u = 5000L;
  
  private final dcj v;
  
  private final con w;
  
  private final ddr x = new ddr();
  
  private final ArrayList<dax> y;
  
  private Integer z = null;
  
  public dce(Context paramContext, Lock paramLock, Looper paramLooper, ctn paramctn, con paramcon, cpd<? extends dpx, dpy> paramcpd, Map<cox<?>, Boolean> paramMap, List<cpv> paramList, List<cpw> paramList1, Map<cpf<?>, cph> paramMap1, int paramInt1, int paramInt2, ArrayList<dax> paramArrayList, boolean paramBoolean) {
    this.q = paramContext;
    this.l = paramLock;
    this.m = paramBoolean;
    this.n = new cty(paramLooper, this.A);
    this.r = paramLooper;
    this.v = new dcj(this, paramLooper);
    this.w = paramcon;
    this.p = paramInt1;
    if (this.p >= 0)
      this.z = Integer.valueOf(paramInt2); 
    this.h = paramMap;
    this.e = paramMap1;
    this.y = paramArrayList;
    this.k = new dem(this.e);
    for (cpv cpv : paramList)
      this.n.a(cpv); 
    for (cpw cpw : paramList1)
      this.n.a(cpw); 
    this.g = paramctn;
    this.i = paramcpd;
  }
  
  public static int a(Iterable<cph> paramIterable, boolean paramBoolean) {
    byte b2 = 1;
    Iterator<cph> iterator = paramIterable.iterator();
    boolean bool = false;
    byte b1 = 0;
    while (iterator.hasNext()) {
      cph cph = iterator.next();
      if (cph.d())
        b1 = 1; 
      if (cph.f())
        bool = true; 
    } 
    if (b1) {
      b1 = b2;
      if (bool) {
        b1 = b2;
        if (paramBoolean)
          b1 = 2; 
      } 
      return b1;
    } 
    return 3;
  }
  
  private void a(cpt paramcpt, dee paramdee, boolean paramBoolean) {
    dfg.c.a(paramcpt).a(new dci(this, paramdee, paramBoolean, paramcpt));
  }
  
  private void a(@NonNull ddi paramddi) {
    if (this.p >= 0) {
      dah.a(paramddi).a(this.p);
      return;
    } 
    throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
  }
  
  static String b(int paramInt) {
    switch (paramInt) {
      default:
        return "UNKNOWN";
      case 3:
        return "SIGN_IN_MODE_NONE";
      case 1:
        return "SIGN_IN_MODE_REQUIRED";
      case 2:
        break;
    } 
    return "SIGN_IN_MODE_OPTIONAL";
  }
  
  private void c(int paramInt) {
    if (this.z == null) {
      this.z = Integer.valueOf(paramInt);
    } else if (this.z.intValue() != paramInt) {
      String str1 = String.valueOf(b(paramInt));
      String str2 = String.valueOf(b(this.z.intValue()));
      throw new IllegalStateException((new StringBuilder(String.valueOf(str1).length() + 51 + String.valueOf(str2).length())).append("Cannot use sign-in mode: ").append(str1).append(". Mode was already set to ").append(str2).toString());
    } 
    if (this.o != null)
      return; 
    Iterator<cph> iterator = this.e.values().iterator();
    paramInt = 0;
    boolean bool = false;
    while (iterator.hasNext()) {
      cph cph = iterator.next();
      if (cph.d())
        bool = true; 
      if (cph.f())
        paramInt = 1; 
    } 
    switch (this.z.intValue()) {
      default:
        if (this.m && paramInt == 0) {
          this.o = new dbe(this.q, this.l, this.r, (cwn)this.w, this.e, this.g, this.h, this.i, this.y, this, false);
          return;
        } 
        break;
      case 1:
        if (!bool)
          throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."); 
        if (paramInt != 0)
          throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."); 
      case 2:
        if (bool) {
          if (this.m) {
            this.o = new dbe(this.q, this.l, this.r, (cwn)this.w, this.e, this.g, this.h, this.i, this.y, this, true);
            return;
          } 
          this.o = daz.a(this.q, this, this.l, this.r, (cwn)this.w, this.e, this.g, this.h, this.i, this.y);
          return;
        } 
    } 
    this.o = new dcm(this.q, this, this.l, this.r, (cwn)this.w, this.e, this.g, this.h, this.i, this.y, this);
  }
  
  private void s() {
    this.n.b();
    this.o.a();
  }
  
  private void t() {
    this.l.lock();
    try {
      if (m())
        s(); 
      return;
    } finally {
      this.l.unlock();
    } 
  }
  
  private void u() {
    this.l.lock();
    try {
      if (o())
        s(); 
      return;
    } finally {
      this.l.unlock();
    } 
  }
  
  public ConnectionResult a(long paramLong, @NonNull TimeUnit paramTimeUnit) {
    boolean bool = false;
    if (Looper.myLooper() != Looper.getMainLooper())
      bool = true; 
    csp.a(bool, "blockingConnect must not be called on the UI thread");
    csp.a(paramTimeUnit, "TimeUnit must not be null");
    this.l.lock();
    try {
      if (this.z == null) {
        this.z = Integer.valueOf(a(this.e.values(), false));
        c(this.z.intValue());
        this.n.b();
        connectionResult = this.o.a(paramLong, paramTimeUnit);
        return connectionResult;
      } 
      if (this.z.intValue() == 2)
        throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."); 
      c(this.z.intValue());
      this.n.b();
      ConnectionResult connectionResult = this.o.a(paramLong, (TimeUnit)connectionResult);
      return connectionResult;
    } finally {
      this.l.unlock();
    } 
  }
  
  @NonNull
  public <C extends cph> C a(@NonNull cpf<C> paramcpf) {
    cph cph = this.e.get(paramcpf);
    csp.a(cph, "Appropriate Api was not requested.");
    return (C)cph;
  }
  
  public <A extends cpe, R extends cqg, T extends dan<R, A>> T a(@NonNull T paramT) {
    String str;
    if (paramT.b() != null) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "This task can not be enqueued (it's probably a Batch or malformed)");
    boolean bool = this.e.containsKey(paramT.b());
    if (paramT.c() != null) {
      str = paramT.c().d();
    } else {
      str = "the API";
    } 
    csp.b(bool, (new StringBuilder(String.valueOf(str).length() + 65)).append("GoogleApiClient is not configured to use ").append(str).append(" required for this call.").toString());
    this.l.lock();
    try {
      if (this.o == null) {
        this.c.add((dan<?, ?>)paramT);
        return paramT;
      } 
      paramT = this.o.a(paramT);
      return paramT;
    } finally {
      this.l.unlock();
    } 
  }
  
  public <L> ddn<L> a(@NonNull L paramL) {
    this.l.lock();
    try {
      return this.x.a(paramL, this.r);
    } finally {
      this.l.unlock();
    } 
  }
  
  public void a(int paramInt) {
    boolean bool2 = true;
    this.l.lock();
    boolean bool1 = bool2;
    if (paramInt != 3) {
      bool1 = bool2;
      if (paramInt != 1)
        if (paramInt == 2) {
          bool1 = bool2;
        } else {
          bool1 = false;
        }  
    } 
    try {
      csp.b(bool1, (new StringBuilder(33)).append("Illegal sign-in mode: ").append(paramInt).toString());
      c(paramInt);
      s();
      return;
    } finally {
      this.l.unlock();
    } 
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    if (paramInt == 1 && !paramBoolean)
      n(); 
    this.k.b();
    this.n.a(paramInt);
    this.n.a();
    if (paramInt == 2)
      s(); 
  }
  
  public void a(Bundle paramBundle) {
    while (!this.c.isEmpty())
      b(this.c.remove()); 
    this.n.a(paramBundle);
  }
  
  public void a(@NonNull FragmentActivity paramFragmentActivity) {
    a(new ddi((Activity)paramFragmentActivity));
  }
  
  public void a(ConnectionResult paramConnectionResult) {
    if (!this.w.b(this.q, paramConnectionResult.c()))
      o(); 
    if (!m()) {
      this.n.a(paramConnectionResult);
      this.n.a();
    } 
  }
  
  public void a(@NonNull cpv paramcpv) {
    this.n.a(paramcpv);
  }
  
  public void a(@NonNull cpw paramcpw) {
    this.n.a(paramcpw);
  }
  
  public void a(dej paramdej) {
    this.l.lock();
    try {
      if (this.j == null)
        this.j = new HashSet<dej>(); 
      this.j.add(paramdej);
      return;
    } finally {
      this.l.unlock();
    } 
  }
  
  public boolean a(@NonNull cox<?> paramcox) {
    return this.e.containsKey(paramcox.c());
  }
  
  public boolean a(ddz paramddz) {
    return (this.o != null && this.o.a(paramddz));
  }
  
  public Context b() {
    return this.q;
  }
  
  <C extends cph> C b(cpf<?> paramcpf) {
    cph cph = this.e.get(paramcpf);
    csp.a(cph, "Appropriate Api was not requested.");
    return (C)cph;
  }
  
  public <A extends cpe, T extends dan<? extends cqg, A>> T b(@NonNull T paramT) {
    String str;
    if (paramT.b() != null) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "This task can not be executed (it's probably a Batch or malformed)");
    boolean bool = this.e.containsKey(paramT.b());
    if (paramT.c() != null) {
      str = paramT.c().d();
    } else {
      str = "the API";
    } 
    csp.b(bool, (new StringBuilder(String.valueOf(str).length() + 65)).append("GoogleApiClient is not configured to use ").append(str).append(" required for this call.").toString());
    this.l.lock();
    try {
      if (this.o == null)
        throw new IllegalStateException("GoogleApiClient is not connected yet."); 
    } finally {
      this.l.unlock();
    } 
    paramT = this.o.b(paramT);
    this.l.unlock();
    return paramT;
  }
  
  public void b(dej paramdej) {
    this.l.lock();
    try {
      if (this.j == null) {
        Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
      } else if (!this.j.remove(paramdej)) {
        Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
      } else if (!p()) {
        this.o.f();
      } 
      return;
    } finally {
      this.l.unlock();
    } 
  }
  
  public void b(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    paramPrintWriter.append(paramString).append("mContext=").println(this.q);
    paramPrintWriter.append(paramString).append("mResuming=").print(this.s);
    paramPrintWriter.append(" mWorkQueue.size()=").print(this.c.size());
    this.k.a(paramPrintWriter);
    if (this.o != null)
      this.o.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString); 
  }
  
  public boolean b(@NonNull cox<?> paramcox) {
    if (!j())
      return false; 
    cph cph = this.e.get(paramcox.c());
    return (cph != null && cph.b());
  }
  
  public boolean b(@NonNull cpv paramcpv) {
    return this.n.b(paramcpv);
  }
  
  public boolean b(@NonNull cpw paramcpw) {
    return this.n.b(paramcpw);
  }
  
  public Looper c() {
    return this.r;
  }
  
  @NonNull
  public ConnectionResult c(@NonNull cox<?> paramcox) {
    ConnectionResult connectionResult;
    this.l.lock();
    try {
      if (!j() && !m())
        throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected"); 
    } finally {
      this.l.unlock();
    } 
    throw new IllegalArgumentException(String.valueOf(connectionResult.d()).concat(" was never registered with GoogleApiClient"));
  }
  
  public void c(@NonNull cpv paramcpv) {
    this.n.c(paramcpv);
  }
  
  public void c(@NonNull cpw paramcpw) {
    this.n.c(paramcpw);
  }
  
  public void d() {
    if (this.o != null)
      this.o.g(); 
  }
  
  public void e() {
    boolean bool = false;
    this.l.lock();
    try {
      if (this.p >= 0) {
        if (this.z != null)
          bool = true; 
        csp.a(bool, "Sign-in mode should have been set explicitly by auto-manage.");
      } else if (this.z == null) {
        this.z = Integer.valueOf(a(this.e.values(), false));
      } else if (this.z.intValue() == 2) {
        throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
      } 
      a(this.z.intValue());
      return;
    } finally {
      this.l.unlock();
    } 
  }
  
  public ConnectionResult f() {
    boolean bool1;
    boolean bool2 = true;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, "blockingConnect must not be called on the UI thread");
    this.l.lock();
    try {
      if (this.p >= 0) {
        if (this.z != null) {
          bool1 = bool2;
        } else {
          bool1 = false;
        } 
        csp.a(bool1, "Sign-in mode should have been set explicitly by auto-manage.");
        c(this.z.intValue());
        this.n.b();
        return this.o.b();
      } 
    } finally {
      this.l.unlock();
    } 
    if (this.z.intValue() == 2)
      throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."); 
    c(this.z.intValue());
    this.n.b();
    ConnectionResult connectionResult = this.o.b();
    this.l.unlock();
    return connectionResult;
  }
  
  public void g() {
    this.l.lock();
    try {
      this.k.a();
      if (this.o != null)
        this.o.c(); 
      this.x.a();
    } finally {
      this.l.unlock();
    } 
    this.c.clear();
    ddg ddg1 = this.o;
    if (ddg1 == null) {
      this.l.unlock();
      return;
    } 
    o();
    this.n.a();
    this.l.unlock();
  }
  
  public void h() {
    g();
    e();
  }
  
  public cpy<Status> i() {
    boolean bool;
    csp.a(j(), "GoogleApiClient is not connected yet.");
    if (this.z.intValue() != 2) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.a(bool, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
    dee dee = new dee(this);
    if (this.e.containsKey(dfg.a)) {
      a(this, dee, false);
      return (cpy<Status>)dee;
    } 
    AtomicReference<cpt> atomicReference = new AtomicReference();
    dcg dcg = new dcg(this, atomicReference, dee);
    dch dch = new dch(this, dee);
    cpt cpt1 = (new cpu(this.q)).a(dfg.b).a(dcg).a(dch).a(this.v).c();
    atomicReference.set(cpt1);
    cpt1.e();
    return (cpy<Status>)dee;
  }
  
  public boolean j() {
    return (this.o != null && this.o.d());
  }
  
  public boolean k() {
    return (this.o != null && this.o.e());
  }
  
  boolean m() {
    return this.s;
  }
  
  void n() {
    if (m())
      return; 
    this.s = true;
    if (this.d == null)
      this.d = this.w.a(this.q.getApplicationContext(), new dck(this)); 
    this.v.sendMessageDelayed(this.v.obtainMessage(1), this.t);
    this.v.sendMessageDelayed(this.v.obtainMessage(2), this.u);
  }
  
  boolean o() {
    if (!m())
      return false; 
    this.s = false;
    this.v.removeMessages(2);
    this.v.removeMessages(1);
    if (this.d != null) {
      this.d.a();
      this.d = null;
    } 
    return true;
  }
  
  boolean p() {
    boolean bool = false;
    this.l.lock();
    try {
      Set<dej> set = this.j;
      if (set == null)
        return false; 
      boolean bool1 = this.j.isEmpty();
      if (!bool1)
        bool = true; 
      return bool;
    } finally {
      this.l.unlock();
    } 
  }
  
  String q() {
    StringWriter stringWriter = new StringWriter();
    b("", null, new PrintWriter(stringWriter), null);
    return stringWriter.toString();
  }
  
  public int r() {
    return System.identityHashCode(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dce.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */