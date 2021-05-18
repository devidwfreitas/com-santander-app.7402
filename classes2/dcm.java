import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public class dcm implements day, ddg {
  final Map<cpf<?>, cph> c;
  
  final Map<cpf<?>, ConnectionResult> d = new HashMap<cpf<?>, ConnectionResult>();
  
  final ctn e;
  
  final Map<cox<?>, Boolean> f;
  
  final cpd<? extends dpx, dpy> g;
  
  int h;
  
  final dce i;
  
  final ddh j;
  
  private final Lock k;
  
  private final Condition l;
  
  private final Context m;
  
  private final cwn n;
  
  private final dco o;
  
  private volatile dcl p;
  
  private ConnectionResult q = null;
  
  public dcm(Context paramContext, dce paramdce, Lock paramLock, Looper paramLooper, cwn paramcwn, Map<cpf<?>, cph> paramMap, ctn paramctn, Map<cox<?>, Boolean> paramMap1, cpd<? extends dpx, dpy> paramcpd, ArrayList<dax> paramArrayList, ddh paramddh) {
    this.m = paramContext;
    this.k = paramLock;
    this.n = paramcwn;
    this.c = paramMap;
    this.e = paramctn;
    this.f = paramMap1;
    this.g = paramcpd;
    this.i = paramdce;
    this.j = paramddh;
    Iterator<dax> iterator = paramArrayList.iterator();
    while (iterator.hasNext())
      ((dax)iterator.next()).a(this); 
    this.o = new dco(this, paramLooper);
    this.l = paramLock.newCondition();
    this.p = new dcd(this);
  }
  
  public ConnectionResult a(long paramLong, TimeUnit paramTimeUnit) {
    a();
    for (paramLong = paramTimeUnit.toNanos(paramLong); e(); paramLong = this.l.awaitNanos(paramLong)) {
      if (paramLong <= 0L)
        try {
          c();
          return new ConnectionResult(14, null);
        } catch (InterruptedException interruptedException) {
          Thread.currentThread().interrupt();
          return new ConnectionResult(15, null);
        }  
    } 
    return d() ? ConnectionResult.u : ((this.q != null) ? this.q : new ConnectionResult(13, null));
  }
  
  @Nullable
  public ConnectionResult a(@NonNull cox<?> paramcox) {
    cpf cpf = paramcox.c();
    if (this.c.containsKey(cpf)) {
      if (((cph)this.c.get(cpf)).b())
        return ConnectionResult.u; 
      if (this.d.containsKey(cpf))
        return this.d.get(cpf); 
    } 
    return null;
  }
  
  public <A extends cpe, R extends cqg, T extends dan<R, A>> T a(@NonNull T paramT) {
    paramT.j();
    return this.p.a(paramT);
  }
  
  public void a() {
    this.p.c();
  }
  
  public void a(int paramInt) {
    this.k.lock();
    try {
      this.p.a(paramInt);
      return;
    } finally {
      this.k.unlock();
    } 
  }
  
  public void a(@Nullable Bundle paramBundle) {
    this.k.lock();
    try {
      this.p.a(paramBundle);
      return;
    } finally {
      this.k.unlock();
    } 
  }
  
  void a(ConnectionResult paramConnectionResult) {
    this.k.lock();
    try {
      this.q = paramConnectionResult;
      this.p = new dcd(this);
      this.p.a();
      this.l.signalAll();
      return;
    } finally {
      this.k.unlock();
    } 
  }
  
  public void a(@NonNull ConnectionResult paramConnectionResult, @NonNull cox<?> paramcox, boolean paramBoolean) {
    this.k.lock();
    try {
      this.p.a(paramConnectionResult, paramcox, paramBoolean);
      return;
    } finally {
      this.k.unlock();
    } 
  }
  
  void a(dcn paramdcn) {
    Message message = this.o.obtainMessage(1, paramdcn);
    this.o.sendMessage(message);
  }
  
  void a(RuntimeException paramRuntimeException) {
    Message message = this.o.obtainMessage(2, paramRuntimeException);
    this.o.sendMessage(message);
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    String str = String.valueOf(paramString).concat("  ");
    paramPrintWriter.append(paramString).append("mState=").println(this.p);
    for (cox<?> cox : this.f.keySet()) {
      paramPrintWriter.append(paramString).append(cox.d()).println(":");
      ((cph)this.c.get(cox.c())).a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    } 
  }
  
  public boolean a(ddz paramddz) {
    return false;
  }
  
  public ConnectionResult b() {
    a();
    while (e()) {
      try {
        this.l.await();
      } catch (InterruptedException interruptedException) {
        Thread.currentThread().interrupt();
        return new ConnectionResult(15, null);
      } 
    } 
    return d() ? ConnectionResult.u : ((this.q != null) ? this.q : new ConnectionResult(13, null));
  }
  
  public <A extends cpe, T extends dan<? extends cqg, A>> T b(@NonNull T paramT) {
    paramT.j();
    return this.p.b(paramT);
  }
  
  public void c() {
    if (this.p.b())
      this.d.clear(); 
  }
  
  public boolean d() {
    return this.p instanceof dbp;
  }
  
  public boolean e() {
    return this.p instanceof dbs;
  }
  
  public void f() {
    if (d())
      ((dbp)this.p).d(); 
  }
  
  public void g() {}
  
  void h() {
    this.k.lock();
    try {
      this.p = new dbs(this, this.e, this.f, this.n, this.g, this.k, this.m);
      this.p.a();
      this.l.signalAll();
      return;
    } finally {
      this.k.unlock();
    } 
  }
  
  void i() {
    this.k.lock();
    try {
      this.i.o();
      this.p = new dbp(this);
      this.p.a();
      this.l.signalAll();
      return;
    } finally {
      this.k.unlock();
    } 
  }
  
  void j() {
    Iterator<cph> iterator = this.c.values().iterator();
    while (iterator.hasNext())
      ((cph)iterator.next()).a(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */