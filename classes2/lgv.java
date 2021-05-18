import android.content.Context;
import android.text.TextUtils;
import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;

public class lgv implements kxl<String> {
  public lgv(MyInsurancesV2Activity paramMyInsurancesV2Activity, int paramInt) {}
  
  public void a(String paramString) {
    if (!this.b.isFinishing() && MyInsurancesV2Activity.i(this.b) == this.a) {
      MyInsurancesV2Activity.j(this.b).setText("-");
      MyInsurancesV2Activity.k(this.b).setState(aor.ERROR);
      MyInsurancesV2Activity myInsurancesV2Activity = this.b;
      if (TextUtils.isEmpty(paramString))
        paramString = this.b.getResources().getString(2131297122); 
      mhj.c((Context)myInsurancesV2Activity, paramString);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lgv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */