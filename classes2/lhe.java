import android.content.Context;
import android.content.Intent;
import com.santander.app.seguros.ui.assistance.activities.AssistanceActivity;
import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;

public class lhe implements liw {
  public lhe(MyInsurancesV2Activity paramMyInsurancesV2Activity) {}
  
  public void a() {
    koi koi = new koi();
    koi.a(MyInsurancesV2Activity.c(this.a).b().a());
    koi.b(MyInsurancesV2Activity.c(this.a).g().a());
    koi.c(MyInsurancesV2Activity.d(this.a).i());
    koi.d(MyInsurancesV2Activity.d(this.a).e());
    koi.f(MyInsurancesV2Activity.d(this.a).j());
    koi.g(MyInsurancesV2Activity.d(this.a).v());
    koi.e(MyInsurancesV2Activity.d(this.a).c());
    Intent intent = new Intent((Context)this.a, AssistanceActivity.class);
    intent.putExtra("ASSISTANCE_INFO_KEY", koi.toString());
    this.a.startActivity(intent);
  }
  
  public void b() {
    MyInsurancesV2Activity.e(this.a);
    Intent intent = new Intent((Context)this.a, SinisterActivity.class);
    intent.putExtra("insurance-data-key", MyInsurancesV2Activity.c(this.a).b().c());
    intent.putExtra("higher_coverage_key", MyInsurancesV2Activity.d(this.a).x());
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lhe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */