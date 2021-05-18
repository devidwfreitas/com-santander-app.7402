import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

final class daz implements ddg {
  private final Context a;
  
  private final dce b;
  
  private final Looper c;
  
  private final dcm d;
  
  private final dcm e;
  
  private final Map<cpf<?>, dcm> f;
  
  private final Set<ddz> g = Collections.newSetFromMap(new WeakHashMap<ddz, Boolean>());
  
  private final cph h;
  
  private Bundle i;
  
  private ConnectionResult j = null;
  
  private ConnectionResult k = null;
  
  private boolean l = false;
  
  private final Lock m;
  
  private int n = 0;
  
  private daz(Context paramContext, dce paramdce, Lock paramLock, Looper paramLooper, cwn paramcwn, Map<cpf<?>, cph> paramMap1, Map<cpf<?>, cph> paramMap2, ctn paramctn, cpd<? extends dpx, dpy> paramcpd, cph paramcph, ArrayList<dax> paramArrayList1, ArrayList<dax> paramArrayList2, Map<cox<?>, Boolean> paramMap3, Map<cox<?>, Boolean> paramMap4) {
    this.a = paramContext;
    this.b = paramdce;
    this.m = paramLock;
    this.c = paramLooper;
    this.h = paramcph;
    this.d = new dcm(paramContext, this.b, paramLock, paramLooper, paramcwn, paramMap2, null, paramMap4, null, paramArrayList2, new dbb(this, null));
    this.e = new dcm(paramContext, this.b, paramLock, paramLooper, paramcwn, paramMap1, paramctn, paramMap3, paramcpd, paramArrayList1, new dbc(this, null));
    ArrayMap arrayMap = new ArrayMap();
    Iterator<cpf> iterator = paramMap2.keySet().iterator();
    while (iterator.hasNext())
      arrayMap.put(iterator.next(), this.d); 
    iterator = paramMap1.keySet().iterator();
    while (iterator.hasNext())
      arrayMap.put(iterator.next(), this.e); 
    this.f = Collections.unmodifiableMap((Map<? extends cpf<?>, ? extends dcm>)arrayMap);
  }
  
  public static daz a(Context paramContext, dce paramdce, Lock paramLock, Looper paramLooper, cwn paramcwn, Map<cpf<?>, cph> paramMap, ctn paramctn, Map<cox<?>, Boolean> paramMap1, cpd<? extends dpx, dpy> paramcpd, ArrayList<dax> paramArrayList) {
    cph cph1;
    boolean bool;
    Map map = null;
    ArrayMap<cpf, cph> arrayMap2 = new ArrayMap();
    ArrayMap<cpf, cph> arrayMap3 = new ArrayMap();
    Iterator<Map.Entry> iterator = paramMap.entrySet().iterator();
    paramMap = map;
    while (iterator.hasNext()) {
      Map.Entry entry = iterator.next();
      cph cph2 = (cph)entry.getValue();
      if (cph2.f())
        cph1 = cph2; 
      if (cph2.d()) {
        arrayMap2.put((cpf)entry.getKey(), cph2);
        continue;
      } 
      arrayMap3.put((cpf)entry.getKey(), cph2);
    } 
    if (!arrayMap2.isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.a(bool, "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
    ArrayMap<cox, Boolean> arrayMap1 = new ArrayMap();
    ArrayMap<cox, Boolean> arrayMap4 = new ArrayMap();
    for (cox<?> cox : paramMap1.keySet()) {
      cpf cpf = cox.c();
      if (arrayMap2.containsKey(cpf)) {
        arrayMap1.put(cox, paramMap1.get(cox));
        continue;
      } 
      if (arrayMap3.containsKey(cpf)) {
        arrayMap4.put(cox, paramMap1.get(cox));
        continue;
      } 
      throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
    } 
    ArrayList<dax> arrayList1 = new ArrayList();
    ArrayList<dax> arrayList2 = new ArrayList();
    for (dax dax : paramArrayList) {
      if (arrayMap1.containsKey(dax.c)) {
        arrayList1.add(dax);
        continue;
      } 
      if (arrayMap4.containsKey(dax.c)) {
        arrayList2.add(dax);
        continue;
      } 
      throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
    } 
    return new daz(paramContext, paramdce, paramLock, paramLooper, paramcwn, (Map)arrayMap2, (Map)arrayMap3, paramctn, paramcpd, cph1, arrayList1, arrayList2, (Map)arrayMap1, (Map)arrayMap4);
  }
  
  private void a(int paramInt, boolean paramBoolean) {
    this.b.a(paramInt, paramBoolean);
    this.k = null;
    this.j = null;
  }
  
  private void a(Bundle paramBundle) {
    if (this.i == null) {
      this.i = paramBundle;
      return;
    } 
    if (paramBundle != null) {
      this.i.putAll(paramBundle);
      return;
    } 
  }
  
  private void a(ConnectionResult paramConnectionResult) {
    switch (this.n) {
      default:
        Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
        this.n = 0;
        return;
      case 2:
        this.b.a(paramConnectionResult);
        break;
      case 1:
        break;
    } 
    l();
    this.n = 0;
  }
  
  private static boolean b(ConnectionResult paramConnectionResult) {
    return (paramConnectionResult != null && paramConnectionResult.b());
  }
  
  private boolean c(dan<? extends cqg, ? extends cpe> paramdan) {
    cpf cpf = paramdan.b();
    csp.b(this.f.containsKey(cpf), "GoogleApiClient is not configured to use the API required for this call.");
    return ((dcm)this.f.get(cpf)).equals(this.e);
  }
  
  private void i() {
    this.k = null;
    this.j = null;
    this.d.a();
    this.e.a();
  }
  
  private void j() {
    if (b(this.j)) {
      if (b(this.k) || m()) {
        k();
        return;
      } 
      if (this.k != null) {
        if (this.n == 1) {
          l();
          return;
        } 
        a(this.k);
        this.d.c();
        return;
      } 
      return;
    } 
    if (this.j != null && b(this.k)) {
      this.e.c();
      a(this.j);
      return;
    } 
    if (this.j != null && this.k != null) {
      ConnectionResult connectionResult = this.j;
      if (this.e.h < this.d.h)
        connectionResult = this.k; 
      a(connectionResult);
      return;
    } 
  }
  
  private void k() {
    switch (this.n) {
      default:
        Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
        this.n = 0;
        return;
      case 2:
        this.b.a(this.i);
        break;
      case 1:
        break;
    } 
    l();
    this.n = 0;
  }
  
  private void l() {
    Iterator<ddz> iterator = this.g.iterator();
    while (iterator.hasNext())
      ((ddz)iterator.next()).a(); 
    this.g.clear();
  }
  
  private boolean m() {
    return (this.k != null && this.k.c() == 4);
  }
  
  @Nullable
  private PendingIntent n() {
    return (this.h == null) ? null : PendingIntent.getActivity(this.a, this.b.r(), this.h.g(), 134217728);
  }
  
  public ConnectionResult a(long paramLong, @NonNull TimeUnit paramTimeUnit) {
    throw new UnsupportedOperationException();
  }
  
  @Nullable
  public ConnectionResult a(@NonNull cox<?> paramcox) {
    return ((dcm)this.f.get(paramcox.c())).equals(this.e) ? (m() ? new ConnectionResult(4, n()) : this.e.a(paramcox)) : this.d.a(paramcox);
  }
  
  public <A extends cpe, R extends cqg, T extends dan<R, A>> T a(@NonNull T paramT) {
    if (c((dan<? extends cqg, ? extends cpe>)paramT)) {
      if (m()) {
        paramT.a(new Status(4, null, n()));
        return paramT;
      } 
      return this.e.a(paramT);
    } 
    return this.d.a(paramT);
  }
  
  public void a() {
    this.n = 2;
    this.l = false;
    i();
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    paramPrintWriter.append(paramString).append("authClient").println(":");
    this.e.a(String.valueOf(paramString).concat("  "), paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.append(paramString).append("anonClient").println(":");
    this.d.a(String.valueOf(paramString).concat("  "), paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public boolean a(ddz paramddz) {
    this.m.lock();
    try {
      if ((e() || d()) && !h()) {
        this.g.add(paramddz);
        if (this.n == 0)
          this.n = 1; 
        this.k = null;
        this.e.a();
        return true;
      } 
      return false;
    } finally {
      this.m.unlock();
    } 
  }
  
  public ConnectionResult b() {
    throw new UnsupportedOperationException();
  }
  
  public <A extends cpe, T extends dan<? extends cqg, A>> T b(@NonNull T paramT) {
    if (c((dan<? extends cqg, ? extends cpe>)paramT)) {
      if (m()) {
        paramT.a(new Status(4, null, n()));
        return paramT;
      } 
      return this.e.b(paramT);
    } 
    return this.d.b(paramT);
  }
  
  public void c() {
    this.k = null;
    this.j = null;
    this.n = 0;
    this.d.c();
    this.e.c();
    l();
  }
  
  public boolean d() {
    boolean bool = true;
    this.m.lock();
    try {
      if (this.d.d()) {
        boolean bool1 = bool;
        if (!h()) {
          bool1 = bool;
          if (!m()) {
            int i = this.n;
            if (i == 1) {
              bool1 = bool;
              return bool1;
            } 
          } else {
            return bool1;
          } 
        } else {
          return bool1;
        } 
      } 
      return false;
    } finally {
      this.m.unlock();
    } 
  }
  
  public boolean e() {
    this.m.lock();
    try {
      int i = this.n;
      if (i == 2)
        return true; 
      return false;
    } finally {
      this.m.unlock();
    } 
  }
  
  public void f() {
    this.d.f();
    this.e.f();
  }
  
  public void g() {
    this.m.lock();
    try {
      boolean bool = e();
      this.e.c();
      this.k = new ConnectionResult(4);
      if (bool) {
        (new Handler(this.c)).post(new dba(this));
      } else {
        l();
      } 
      return;
    } finally {
      this.m.unlock();
    } 
  }
  
  public boolean h() {
    return this.e.d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\daz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */