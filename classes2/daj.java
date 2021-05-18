import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import java.util.Set;

public final class daj {
  private final ArrayMap<dth<?>, ConnectionResult> a = new ArrayMap();
  
  private final egw<Void> b = new egw<Void>();
  
  private int c;
  
  private boolean d = false;
  
  public daj(Iterable<? extends cqn<?>> paramIterable) {
    for (cqn<?> cqn : paramIterable)
      this.a.put(cqn.c(), null); 
    this.c = this.a.keySet().size();
  }
  
  public Set<dth<?>> a() {
    return this.a.keySet();
  }
  
  public void a(dth<?> paramdth, ConnectionResult paramConnectionResult) {
    this.a.put(paramdth, paramConnectionResult);
    this.c--;
    if (!paramConnectionResult.b())
      this.d = true; 
    if (this.c == 0) {
      if (this.d) {
        cqm cqm = new cqm(this.a);
        this.b.a((Exception)cqm);
        return;
      } 
    } else {
      return;
    } 
    this.b.a((Void)null);
  }
  
  public egv<Void> b() {
    return this.b.a();
  }
  
  public void c() {
    this.b.a((Void)null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\daj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */