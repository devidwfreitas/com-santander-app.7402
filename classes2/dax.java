import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;

public class dax implements cpv, cpw {
  public final cox<?> c;
  
  private final boolean d;
  
  private day e;
  
  public dax(cox<?> paramcox, boolean paramBoolean) {
    this.c = paramcox;
    this.d = paramBoolean;
  }
  
  private void a() {
    csp.a(this.e, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
  }
  
  public void a(int paramInt) {
    a();
    this.e.a(paramInt);
  }
  
  public void a(@Nullable Bundle paramBundle) {
    a();
    this.e.a(paramBundle);
  }
  
  public void a(@NonNull ConnectionResult paramConnectionResult) {
    a();
    this.e.a(paramConnectionResult, this.c, this.d);
  }
  
  public void a(day paramday) {
    this.e = paramday;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */