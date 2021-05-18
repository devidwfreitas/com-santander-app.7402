import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;

public class ctk implements cth {
  public ctk(ctb paramctb) {}
  
  public void a(@NonNull ConnectionResult paramConnectionResult) {
    if (paramConnectionResult.b()) {
      this.a.a((cug)null, this.a.y());
      return;
    } 
    if (ctb.d(this.a) != null) {
      ctb.d(this.a).a(paramConnectionResult);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */