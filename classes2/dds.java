import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.CancellationException;

public class dds extends dap {
  private egw<Void> e = new egw<Void>();
  
  private dds(ddk paramddk) {
    super(paramddk);
    this.d.a("GmsAvailabilityHelper", this);
  }
  
  public static dds b(Activity paramActivity) {
    ddk ddk = a(paramActivity);
    dds dds1 = ddk.<dds>a("GmsAvailabilityHelper", dds.class);
    if (dds1 != null) {
      if (dds1.e.a().a())
        dds1.e = new egw<Void>(); 
      return dds1;
    } 
    return new dds(ddk);
  }
  
  public void a(ConnectionResult paramConnectionResult) {
    b(paramConnectionResult, 0);
  }
  
  protected void a(ConnectionResult paramConnectionResult, int paramInt) {
    this.e.a((Exception)csy.a(paramConnectionResult));
  }
  
  protected void c() {
    int i = this.c.a((Context)this.d.a());
    if (i == 0) {
      this.e.a((Void)null);
      return;
    } 
    a(new ConnectionResult(i, null));
  }
  
  public egv<Void> e() {
    return this.e.a();
  }
  
  public void g() {
    super.g();
    this.e.a(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */