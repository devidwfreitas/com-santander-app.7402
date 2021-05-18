import android.accounts.Account;
import android.support.annotation.NonNull;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzg;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class coe {
  private Set<Scope> a = new HashSet<Scope>();
  
  private boolean b;
  
  private boolean c;
  
  private boolean d;
  
  private String e;
  
  private Account f;
  
  private String g;
  
  private Map<Integer, zzg> h = new HashMap<Integer, zzg>();
  
  public coe() {}
  
  public coe(@NonNull GoogleSignInOptions paramGoogleSignInOptions) {
    csp.a(paramGoogleSignInOptions);
    this.a = new HashSet<Scope>(GoogleSignInOptions.a(paramGoogleSignInOptions));
    this.b = GoogleSignInOptions.b(paramGoogleSignInOptions);
    this.c = GoogleSignInOptions.c(paramGoogleSignInOptions);
    this.d = GoogleSignInOptions.d(paramGoogleSignInOptions);
    this.e = GoogleSignInOptions.e(paramGoogleSignInOptions);
    this.f = GoogleSignInOptions.f(paramGoogleSignInOptions);
    this.g = GoogleSignInOptions.g(paramGoogleSignInOptions);
    this.h = GoogleSignInOptions.a(GoogleSignInOptions.h(paramGoogleSignInOptions));
  }
  
  private String e(String paramString) {
    csp.a(paramString);
    if (this.e == null || this.e.equals(paramString)) {
      boolean bool1 = true;
      csp.b(bool1, "two different server client ids provided");
      return paramString;
    } 
    boolean bool = false;
    csp.b(bool, "two different server client ids provided");
    return paramString;
  }
  
  public coe a() {
    this.a.add(GoogleSignInOptions.c);
    return this;
  }
  
  public coe a(cof paramcof) {
    if (this.h.containsKey(Integer.valueOf(1)))
      throw new IllegalStateException("Only one extension per type may be added"); 
    this.h.put(Integer.valueOf(1), new zzg(paramcof));
    return this;
  }
  
  public coe a(Scope paramScope, Scope... paramVarArgs) {
    this.a.add(paramScope);
    this.a.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public coe a(String paramString) {
    this.d = true;
    this.e = e(paramString);
    return this;
  }
  
  public coe a(String paramString, boolean paramBoolean) {
    this.b = true;
    this.e = e(paramString);
    this.c = paramBoolean;
    return this;
  }
  
  public coe b() {
    this.a.add(GoogleSignInOptions.b);
    return this;
  }
  
  public coe b(String paramString) {
    return a(paramString, false);
  }
  
  public coe c() {
    this.a.add(GoogleSignInOptions.a);
    return this;
  }
  
  public coe c(String paramString) {
    this.f = new Account(csp.a(paramString), "com.google");
    return this;
  }
  
  public coe d(String paramString) {
    this.g = csp.a(paramString);
    return this;
  }
  
  public GoogleSignInOptions d() {
    if (this.d && (this.f == null || !this.a.isEmpty()))
      a(); 
    return new GoogleSignInOptions(3, new ArrayList<Scope>(this.a), this.f, this.d, this.b, this.c, this.e, this.g, this.h, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\coe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */