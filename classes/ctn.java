import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ctn {
  private final Account a;
  
  private final Set<Scope> b;
  
  private final Set<Scope> c;
  
  private final Map<cox<?>, cto> d;
  
  private final int e;
  
  private final View f;
  
  private final String g;
  
  private final String h;
  
  private final dpy i;
  
  private Integer j;
  
  public ctn(Account paramAccount, Set<Scope> paramSet, Map<cox<?>, cto> paramMap, int paramInt, View paramView, String paramString1, String paramString2, dpy paramdpy) {
    Set<Scope> set;
    this.a = paramAccount;
    if (paramSet == null) {
      set = Collections.EMPTY_SET;
    } else {
      set = Collections.unmodifiableSet(paramSet);
    } 
    this.b = set;
    Map<cox<?>, cto> map = paramMap;
    if (paramMap == null)
      map = Collections.EMPTY_MAP; 
    this.d = map;
    this.f = paramView;
    this.e = paramInt;
    this.g = paramString1;
    this.h = paramString2;
    this.i = paramdpy;
    HashSet<Scope> hashSet = new HashSet<Scope>(this.b);
    Iterator iterator = this.d.values().iterator();
    while (iterator.hasNext())
      hashSet.addAll(((cto)iterator.next()).a); 
    this.c = Collections.unmodifiableSet(hashSet);
  }
  
  public static ctn a(Context paramContext) {
    return (new cpu(paramContext)).b();
  }
  
  @Deprecated
  public String a() {
    return (this.a != null) ? this.a.name : null;
  }
  
  public Set<Scope> a(cox<?> paramcox) {
    cto cto = this.d.get(paramcox);
    if (cto == null || cto.a.isEmpty())
      return this.b; 
    HashSet<Scope> hashSet = new HashSet<Scope>(this.b);
    hashSet.addAll(cto.a);
    return hashSet;
  }
  
  public void a(Integer paramInteger) {
    this.j = paramInteger;
  }
  
  public Account b() {
    return this.a;
  }
  
  public Account c() {
    return (this.a != null) ? this.a : new Account("<<default account>>", "com.google");
  }
  
  public int d() {
    return this.e;
  }
  
  public Set<Scope> e() {
    return this.b;
  }
  
  public Set<Scope> f() {
    return this.c;
  }
  
  public Map<cox<?>, cto> g() {
    return this.d;
  }
  
  public String h() {
    return this.g;
  }
  
  public String i() {
    return this.h;
  }
  
  public View j() {
    return this.f;
  }
  
  public dpy k() {
    return this.i;
  }
  
  public Integer l() {
    return this.j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ctn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */