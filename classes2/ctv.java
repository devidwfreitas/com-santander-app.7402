import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.zzc;
import java.util.Iterator;
import java.util.Set;

public abstract class ctv<T extends IInterface> extends ctb<T> implements cph, ctz {
  private final ctn e;
  
  private final Set<Scope> f;
  
  private final Account g;
  
  protected ctv(Context paramContext, Looper paramLooper, int paramInt, ctn paramctn, cpv paramcpv, cpw paramcpw) {
    this(paramContext, paramLooper, cua.a(paramContext), con.a(), paramInt, paramctn, csp.<cpv>a(paramcpv), csp.<cpw>a(paramcpw));
  }
  
  protected ctv(Context paramContext, Looper paramLooper, cua paramcua, con paramcon, int paramInt, ctn paramctn, cpv paramcpv, cpw paramcpw) {
    super(paramContext, paramLooper, paramcua, (cwn)paramcon, paramInt, a(paramcpv), a(paramcpw), paramctn.i());
    this.e = paramctn;
    this.g = paramctn.b();
    this.f = b(paramctn.f());
  }
  
  @Nullable
  private static ctd a(cpv paramcpv) {
    return (paramcpv == null) ? null : new ctw(paramcpv);
  }
  
  @Nullable
  private static cte a(cpw paramcpw) {
    return (paramcpw == null) ? null : new ctx(paramcpw);
  }
  
  private Set<Scope> b(@NonNull Set<Scope> paramSet) {
    Set<Scope> set = a(paramSet);
    Iterator<Scope> iterator = set.iterator();
    while (iterator.hasNext()) {
      if (!paramSet.contains(iterator.next()))
        throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead"); 
    } 
    return set;
  }
  
  @NonNull
  protected Set<Scope> a(@NonNull Set<Scope> paramSet) {
    return paramSet;
  }
  
  public final Account q() {
    return this.g;
  }
  
  public zzc[] r() {
    return new zzc[0];
  }
  
  protected final Set<Scope> y() {
    return this.f;
  }
  
  protected final ctn z() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */