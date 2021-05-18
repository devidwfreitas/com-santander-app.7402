import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import java.util.Set;

class dcw implements cth, dec {
  private final cph b;
  
  private final dth<?> c;
  
  private cug d = null;
  
  private Set<Scope> e = null;
  
  private boolean f = false;
  
  public dcw(dcq paramdcq, cph paramcph, dth<?> paramdth) {
    this.b = paramcph;
    this.c = paramdth;
  }
  
  @WorkerThread
  private void a() {
    if (this.f && this.d != null)
      this.b.a(this.d, this.e); 
  }
  
  public void a(@NonNull ConnectionResult paramConnectionResult) {
    dcq.a(this.a).post(new dcx(this, paramConnectionResult));
  }
  
  @WorkerThread
  public void a(cug paramcug, Set<Scope> paramSet) {
    if (paramcug == null || paramSet == null) {
      Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
      b(new ConnectionResult(4));
      return;
    } 
    this.d = paramcug;
    this.e = paramSet;
    a();
  }
  
  @WorkerThread
  public void b(ConnectionResult paramConnectionResult) {
    ((dcs)dcq.j(this.a).get(this.c)).b(paramConnectionResult);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */