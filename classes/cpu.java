import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;

public final class cpu {
  private Account a;
  
  private final Set<Scope> b = new HashSet<Scope>();
  
  private final Set<Scope> c = new HashSet<Scope>();
  
  private int d;
  
  private View e;
  
  private String f;
  
  private String g;
  
  private final Map<cox<?>, cto> h = (Map<cox<?>, cto>)new ArrayMap();
  
  private final Context i;
  
  private final Map<cox<?>, coy> j = (Map<cox<?>, coy>)new ArrayMap();
  
  private ddi k;
  
  private int l = -1;
  
  private cpw m;
  
  private Looper n;
  
  private con o = con.a();
  
  private cpd<? extends dpx, dpy> p = dpt.c;
  
  private final ArrayList<cpv> q = new ArrayList<cpv>();
  
  private final ArrayList<cpw> r = new ArrayList<cpw>();
  
  private boolean s = false;
  
  public cpu(@NonNull Context paramContext) {
    this.i = paramContext;
    this.n = paramContext.getMainLooper();
    this.f = paramContext.getPackageName();
    this.g = paramContext.getClass().getName();
  }
  
  public cpu(@NonNull Context paramContext, @NonNull cpv paramcpv, @NonNull cpw paramcpw) {
    this(paramContext);
    csp.a(paramcpv, "Must provide a connected listener");
    this.q.add(paramcpv);
    csp.a(paramcpw, "Must provide a connection failed listener");
    this.r.add(paramcpw);
  }
  
  private static <C extends cph, O> C a(cpd<C, O> paramcpd, Object paramObject, Context paramContext, Looper paramLooper, ctn paramctn, cpv paramcpv, cpw paramcpw) {
    return paramcpd.a(paramContext, paramLooper, paramctn, (O)paramObject, paramcpv, paramcpw);
  }
  
  private cpu a(@NonNull ddi paramddi, int paramInt, @Nullable cpw paramcpw) {
    if (paramInt >= 0) {
      boolean bool1 = true;
      csp.b(bool1, "clientId must be non-negative");
      this.l = paramInt;
      this.m = paramcpw;
      this.k = paramddi;
      return this;
    } 
    boolean bool = false;
    csp.b(bool, "clientId must be non-negative");
    this.l = paramInt;
    this.m = paramcpw;
    this.k = paramddi;
    return this;
  }
  
  private <O extends coy> void a(cox<O> paramcox, O paramO, Scope... paramVarArgs) {
    HashSet<Scope> hashSet = new HashSet<Scope>(paramcox.a().a(paramO));
    int j = paramVarArgs.length;
    int i;
    for (i = 0; i < j; i++)
      hashSet.add(paramVarArgs[i]); 
    this.h.put(paramcox, new cto(hashSet));
  }
  
  private void a(cpt paramcpt) {
    dah.a(this.k).a(this.l, paramcpt, this.m);
  }
  
  private cpt d() {
    String str;
    ctn ctn = b();
    cox cox = null;
    Map<cox<?>, cto> map = ctn.g();
    ArrayMap<cox, Boolean> arrayMap = new ArrayMap();
    ArrayMap<cpf<?>, dax> arrayMap1 = new ArrayMap();
    ArrayList<dax> arrayList = new ArrayList();
    Iterator<cox> iterator = this.j.keySet().iterator();
    int i = 0;
    while (iterator.hasNext()) {
      boolean bool;
      String str1;
      cox cox2 = iterator.next();
      cox cox1 = (cox)this.j.get(cox2);
      if (map.get(cox2) != null) {
        bool = true;
      } else {
        bool = false;
      } 
      arrayMap.put(cox2, Boolean.valueOf(bool));
      dax dax = new dax(cox2, bool);
      arrayList.add(dax);
      cpd<dax, ?> cpd1 = cox2.b();
      dax = a(cpd1, cox1, this.i, this.n, ctn, (cpv)dax, (cpw)dax);
      arrayMap1.put(cox2.c(), dax);
      if (cpd1.a() == 1)
        if (cox1 != null) {
          i = 1;
        } else {
          i = 0;
        }  
      if (dax.f()) {
        cox1 = cox2;
        if (cox != null) {
          str1 = String.valueOf(cox2.d());
          str = String.valueOf(cox.d());
          throw new IllegalStateException((new StringBuilder(String.valueOf(str1).length() + 21 + String.valueOf(str).length())).append(str1).append(" cannot be used with ").append(str).toString());
        } 
      } else {
        str1 = str;
      } 
      str = str1;
    } 
    if (str != null) {
      boolean bool;
      if (i) {
        str = String.valueOf(str.d());
        throw new IllegalStateException((new StringBuilder(String.valueOf(str).length() + 82)).append("With using ").append(str).append(", GamesOptions can only be specified within GoogleSignInOptions.Builder").toString());
      } 
      if (this.a == null) {
        bool = true;
      } else {
        bool = false;
      } 
      csp.a(bool, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", new Object[] { str.d() });
      csp.a(this.b.equals(this.c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", new Object[] { str.d() });
    } 
    i = dce.a(arrayMap1.values(), true);
    return (cpt)new dce(this.i, new ReentrantLock(), this.n, ctn, this.o, this.p, (Map)arrayMap, this.q, this.r, (Map)arrayMap1, this.l, i, arrayList, false);
  }
  
  public cpu a() {
    return a("<<default account>>");
  }
  
  public cpu a(int paramInt) {
    this.d = paramInt;
    return this;
  }
  
  public cpu a(Account paramAccount) {
    this.a = paramAccount;
    return this;
  }
  
  public cpu a(@NonNull Handler paramHandler) {
    csp.a(paramHandler, "Handler must not be null");
    this.n = paramHandler.getLooper();
    return this;
  }
  
  public cpu a(@NonNull FragmentActivity paramFragmentActivity, int paramInt, @Nullable cpw paramcpw) {
    return a(new ddi((Activity)paramFragmentActivity), paramInt, paramcpw);
  }
  
  public cpu a(@NonNull FragmentActivity paramFragmentActivity, @Nullable cpw paramcpw) {
    return a(paramFragmentActivity, 0, paramcpw);
  }
  
  public cpu a(@NonNull View paramView) {
    csp.a(paramView, "View must not be null");
    this.e = paramView;
    return this;
  }
  
  public cpu a(@NonNull Scope paramScope) {
    csp.a(paramScope, "Scope must not be null");
    this.b.add(paramScope);
    return this;
  }
  
  public cpu a(@NonNull cox<? extends cpb> paramcox) {
    csp.a(paramcox, "Api must not be null");
    this.j.put(paramcox, null);
    List<Scope> list = paramcox.a().a(null);
    this.c.addAll(list);
    this.b.addAll(list);
    return this;
  }
  
  public <O extends coz> cpu a(@NonNull cox<O> paramcox, @NonNull O paramO) {
    csp.a(paramcox, "Api must not be null");
    csp.a(paramO, "Null options are not permitted for this Api");
    this.j.put(paramcox, (coy)paramO);
    List<Scope> list = paramcox.a().a(paramO);
    this.c.addAll(list);
    this.b.addAll(list);
    return this;
  }
  
  public <O extends coz> cpu a(@NonNull cox<O> paramcox, @NonNull O paramO, Scope... paramVarArgs) {
    csp.a(paramcox, "Api must not be null");
    csp.a(paramO, "Null options are not permitted for this Api");
    this.j.put(paramcox, (coy)paramO);
    a((cox)paramcox, (coy)paramO, paramVarArgs);
    return this;
  }
  
  public cpu a(@NonNull cox<? extends cpb> paramcox, Scope... paramVarArgs) {
    csp.a(paramcox, "Api must not be null");
    this.j.put(paramcox, null);
    a(paramcox, (cpb)null, paramVarArgs);
    return this;
  }
  
  public cpu a(@NonNull cpv paramcpv) {
    csp.a(paramcpv, "Listener must not be null");
    this.q.add(paramcpv);
    return this;
  }
  
  public cpu a(@NonNull cpw paramcpw) {
    csp.a(paramcpw, "Listener must not be null");
    this.r.add(paramcpw);
    return this;
  }
  
  public cpu a(String paramString) {
    if (paramString == null) {
      paramString = null;
      this.a = (Account)paramString;
      return this;
    } 
    Account account = new Account(paramString, "com.google");
    this.a = account;
    return this;
  }
  
  public ctn b() {
    dpy dpy = dpy.a;
    if (this.j.containsKey(dpt.g))
      dpy = (dpy)this.j.get(dpt.g); 
    return new ctn(this.a, this.b, this.h, this.d, this.e, this.f, this.g, dpy);
  }
  
  public cpt c() {
    boolean bool;
    if (!this.j.isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "must call addApi() to add at least one API");
    null = d();
    synchronized (cpt.l()) {
      cpt.l().add(null);
      if (this.l >= 0)
        a(null); 
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cpu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */