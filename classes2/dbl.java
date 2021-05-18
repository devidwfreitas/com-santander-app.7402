import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;

public class dbl extends dap {
  private final cvk<dth<?>> e = new cvk<dth<?>>();
  
  private dcq f;
  
  private dbl(ddk paramddk) {
    super(paramddk);
    this.d.a("ConnectionlessLifecycleHelper", this);
  }
  
  public static void a(Activity paramActivity, dcq paramdcq, dth<?> paramdth) {
    ddk ddk = a(paramActivity);
    dbl dbl2 = ddk.<dbl>a("ConnectionlessLifecycleHelper", dbl.class);
    dbl dbl1 = dbl2;
    if (dbl2 == null)
      dbl1 = new dbl(ddk); 
    dbl1.f = paramdcq;
    dbl1.a(paramdth);
    paramdcq.a(dbl1);
  }
  
  private void a(dth<?> paramdth) {
    csp.a(paramdth, "ApiKey cannot be null");
    this.e.add(paramdth);
  }
  
  public void a() {
    super.a();
    if (!this.e.isEmpty())
      this.f.a(this); 
  }
  
  protected void a(ConnectionResult paramConnectionResult, int paramInt) {
    this.f.b(paramConnectionResult, paramInt);
  }
  
  public void b() {
    super.b();
    this.f.b(this);
  }
  
  protected void c() {
    this.f.d();
  }
  
  cvk<dth<?>> e() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */