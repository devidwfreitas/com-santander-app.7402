import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public class dbe implements ddg {
  private final Map<cpf<?>, dbd<?>> a = new HashMap<cpf<?>, dbd<?>>();
  
  private final Map<cpf<?>, dbd<?>> b = new HashMap<cpf<?>, dbd<?>>();
  
  private final Map<cox<?>, Boolean> c;
  
  private final dcq d;
  
  private final dce e;
  
  private final Lock f;
  
  private final Looper g;
  
  private final cwn h;
  
  private final Condition i;
  
  private final ctn j;
  
  private final boolean k;
  
  private final boolean l;
  
  private final Queue<dan<?, ?>> m = new LinkedList<dan<?, ?>>();
  
  private boolean n;
  
  private Map<dth<?>, ConnectionResult> o;
  
  private Map<dth<?>, ConnectionResult> p;
  
  private dbh q;
  
  private ConnectionResult r;
  
  public dbe(Context paramContext, Lock paramLock, Looper paramLooper, cwn paramcwn, Map<cpf<?>, cph> paramMap, ctn paramctn, Map<cox<?>, Boolean> paramMap1, cpd<? extends dpx, dpy> paramcpd, ArrayList<dax> paramArrayList, dce paramdce, boolean paramBoolean) {
    this.f = paramLock;
    this.g = paramLooper;
    this.i = paramLock.newCondition();
    this.h = paramcwn;
    this.e = paramdce;
    this.c = paramMap1;
    this.j = paramctn;
    this.k = paramBoolean;
    HashMap<Object, Object> hashMap1 = new HashMap<Object, Object>();
    for (cox<?> cox : paramMap1.keySet())
      hashMap1.put(cox.c(), cox); 
    HashMap<Object, Object> hashMap2 = new HashMap<Object, Object>();
    for (dax dax : paramArrayList)
      hashMap2.put(dax.c, dax); 
    Iterator<Map.Entry> iterator = paramMap.entrySet().iterator();
    boolean bool2 = true;
    boolean bool1 = false;
    boolean bool3 = false;
    while (true) {
      if (iterator.hasNext()) {
        Map.Entry entry = iterator.next();
        cox<coy> cox = (cox)hashMap1.get(entry.getKey());
        cph cph = (cph)entry.getValue();
        if (cph.e()) {
          bool3 = true;
          if (!((Boolean)this.c.get(cox)).booleanValue()) {
            bool1 = bool2;
            bool2 = true;
          } else {
            boolean bool4 = bool1;
            bool1 = bool2;
            bool2 = bool4;
          } 
        } else {
          boolean bool4 = false;
          bool2 = bool1;
          bool1 = bool4;
        } 
        dbd<coy> dbd = new dbd<coy>(paramContext, cox, paramLooper, cph, (dax)hashMap2.get(cox), paramctn, paramcpd);
        this.a.put((cpf)entry.getKey(), dbd);
        if (cph.d())
          this.b.put((cpf)entry.getKey(), dbd); 
        boolean bool = bool2;
        bool2 = bool1;
        bool1 = bool;
        continue;
      } 
      if (bool3 && !bool2 && !bool1) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      } 
      this.l = paramBoolean;
      this.d = dcq.a();
      return;
    } 
  }
  
  @Nullable
  private ConnectionResult a(@NonNull cpf<?> paramcpf) {
    this.f.lock();
    try {
      dbd dbd = this.a.get(paramcpf);
      if (this.o != null && dbd != null)
        return this.o.get(dbd.c()); 
      return null;
    } finally {
      this.f.unlock();
    } 
  }
  
  private boolean a(dbd<?> paramdbd, ConnectionResult paramConnectionResult) {
    return (!paramConnectionResult.b() && !paramConnectionResult.a() && ((Boolean)this.c.get(paramdbd.a())).booleanValue() && paramdbd.h().e() && this.h.a(paramConnectionResult.c()));
  }
  
  private <T extends dan<? extends cqg, ? extends cpe>> boolean c(@NonNull T paramT) {
    cpf<?> cpf = paramT.b();
    ConnectionResult connectionResult = a(cpf);
    if (connectionResult != null && connectionResult.c() == 4) {
      paramT.a(new Status(4, null, this.d.a(((dbd)this.a.get(cpf)).c(), this.e.r())));
      return true;
    } 
    return false;
  }
  
  private void i() {
    if (this.j == null) {
      this.e.f = Collections.emptySet();
      return;
    } 
    HashSet<Scope> hashSet = new HashSet(this.j.e());
    Map map = this.j.g();
    for (cox<?> cox : (Iterable<cox<?>>)map.keySet()) {
      ConnectionResult connectionResult = a(cox);
      if (connectionResult != null && connectionResult.b())
        hashSet.addAll(((cto)map.get(cox)).a); 
    } 
    this.e.f = hashSet;
  }
  
  private void j() {
    while (!this.m.isEmpty())
      b(this.m.remove()); 
    this.e.a((Bundle)null);
  }
  
  @Nullable
  private ConnectionResult k() {
    Iterator<dbd> iterator = this.a.values().iterator();
    int j = 0;
    ConnectionResult connectionResult2 = null;
    int i = 0;
    ConnectionResult connectionResult1 = null;
    while (iterator.hasNext()) {
      dbd dbd = iterator.next();
      cox cox = dbd.a();
      dth dth = dbd.c();
      ConnectionResult connectionResult = this.o.get(dth);
      if (!connectionResult.b() && (!((Boolean)this.c.get(cox)).booleanValue() || connectionResult.a() || this.h.a(connectionResult.c()))) {
        if (connectionResult.c() == 4 && this.k) {
          int m = cox.a().a();
          if (connectionResult2 == null || j > m) {
            j = m;
            connectionResult2 = connectionResult;
          } 
          continue;
        } 
        int k = cox.a().a();
        if (connectionResult1 == null || i > k) {
          connectionResult1 = connectionResult;
          i = k;
        } 
      } 
    } 
    return (connectionResult1 != null && connectionResult2 != null && i > j) ? connectionResult2 : connectionResult1;
  }
  
  public ConnectionResult a(long paramLong, TimeUnit paramTimeUnit) {
    a();
    for (paramLong = paramTimeUnit.toNanos(paramLong); e(); paramLong = this.i.awaitNanos(paramLong)) {
      if (paramLong <= 0L)
        try {
          c();
          return new ConnectionResult(14, null);
        } catch (InterruptedException interruptedException) {
          Thread.currentThread().interrupt();
          return new ConnectionResult(15, null);
        }  
    } 
    return d() ? ConnectionResult.u : ((this.r != null) ? this.r : new ConnectionResult(13, null));
  }
  
  @Nullable
  public ConnectionResult a(@NonNull cox<?> paramcox) {
    return a(paramcox.c());
  }
  
  public <A extends cpe, R extends cqg, T extends dan<R, A>> T a(@NonNull T paramT) {
    if (this.k && c((dan<? extends cqg, ? extends cpe>)paramT))
      return paramT; 
    if (!d()) {
      this.m.add((dan<?, ?>)paramT);
      return paramT;
    } 
    this.e.k.a((dat<? extends cqg>)paramT);
    return (T)((dbd)this.a.get(paramT.b())).a((dan)paramT);
  }
  
  public void a() {
    this.f.lock();
    try {
      boolean bool = this.n;
      if (bool)
        return; 
      this.n = true;
      this.o = null;
      this.p = null;
      this.q = null;
      this.r = null;
      this.d.d();
      this.d.a(this.a.values()).a(new dgg(this.g), new dbg(this, null));
      return;
    } finally {
      this.f.unlock();
    } 
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  public boolean a(ddz paramddz) {
    this.f.lock();
    try {
      if (this.n && !h()) {
        this.d.d();
        this.q = new dbh(this, paramddz);
        this.d.a(this.b.values()).a(new dgg(this.g), this.q);
        return true;
      } 
      return false;
    } finally {
      this.f.unlock();
    } 
  }
  
  public ConnectionResult b() {
    a();
    while (e()) {
      try {
        this.i.await();
      } catch (InterruptedException interruptedException) {
        Thread.currentThread().interrupt();
        return new ConnectionResult(15, null);
      } 
    } 
    return d() ? ConnectionResult.u : ((this.r != null) ? this.r : new ConnectionResult(13, null));
  }
  
  public <A extends cpe, T extends dan<? extends cqg, A>> T b(@NonNull T paramT) {
    cpf cpf = paramT.b();
    if (this.k && c((dan<? extends cqg, ? extends cpe>)paramT))
      return paramT; 
    this.e.k.a((dat<? extends cqg>)paramT);
    return (T)((dbd)this.a.get(cpf)).b((dan)paramT);
  }
  
  public void c() {
    this.f.lock();
    try {
      this.n = false;
      this.o = null;
      this.p = null;
      if (this.q != null) {
        this.q.a();
        this.q = null;
      } 
      this.r = null;
    } finally {
      this.f.unlock();
    } 
    this.i.signalAll();
    this.f.unlock();
  }
  
  public boolean d() {
    this.f.lock();
    try {
      if (this.o != null) {
        ConnectionResult connectionResult = this.r;
        if (connectionResult == null)
          return true; 
      } 
      return false;
    } finally {
      this.f.unlock();
    } 
  }
  
  public boolean e() {
    this.f.lock();
    try {
      if (this.o == null) {
        boolean bool = this.n;
        if (bool) {
          bool = true;
          return bool;
        } 
      } 
      return false;
    } finally {
      this.f.unlock();
    } 
  }
  
  public void f() {}
  
  public void g() {
    this.f.lock();
    try {
      this.d.f();
      if (this.q != null) {
        this.q.a();
        this.q = null;
      } 
      if (this.p == null)
        this.p = (Map<dth<?>, ConnectionResult>)new ArrayMap(this.b.size()); 
      ConnectionResult connectionResult = new ConnectionResult(4);
    } finally {
      this.f.unlock();
    } 
    if (this.o != null)
      this.o.putAll(this.p); 
    this.f.unlock();
  }
  
  public boolean h() {
    this.f.lock();
    try {
      if (this.n) {
        boolean bool = this.k;
        if (bool) {
          Iterator<cpf> iterator = this.b.keySet().iterator();
          while (iterator.hasNext()) {
            ConnectionResult connectionResult = a(iterator.next());
            if (connectionResult != null) {
              bool = connectionResult.b();
              if (!bool)
                return false; 
              continue;
            } 
            return false;
          } 
          return true;
        } 
      } 
      return false;
    } finally {
      this.f.unlock();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */