import android.content.Context;
import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;

public class lhh implements Runnable {
  public lhh(MyInsurancesV2Activity paramMyInsurancesV2Activity) {}
  
  public void run() {
    String str = mhj.a((Context)this.a, "jsons/sinister/new_consultative_response.json");
    kuh kuh = mys.a().<kuh>a(str, kuh.class);
    MyInsurancesV2Activity.a(this.a, kuh.a());
    MyInsurancesV2Activity.f(this.a);
    MyInsurancesV2Activity.g(this.a);
    MyInsurancesV2Activity.h(this.a).setState(aor.CONTENT);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lhh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */