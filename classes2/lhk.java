import android.content.Context;
import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;

public class lhk implements kxl<krg> {
  public lhk(MyInsurancesV2Activity paramMyInsurancesV2Activity, int paramInt) {}
  
  public void a(krg paramkrg) {
    if (!this.b.isFinishing() && MyInsurancesV2Activity.i(this.b) == this.a) {
      if (paramkrg == null) {
        MyInsurancesV2Activity.j(this.b).setText("-");
        MyInsurancesV2Activity.k(this.b).setState(aor.ERROR);
        mhj.c((Context)this.b, this.b.getResources().getString(2131297122));
        return;
      } 
      MyInsurancesV2Activity.a(this.b, paramkrg);
      if (paramkrg.e() != null && paramkrg.e().size() > 0) {
        MyInsurancesV2Activity.j(this.b).setText(mhj.a(((kqv)paramkrg.e().get(0)).h()));
      } else {
        MyInsurancesV2Activity.j(this.b).setText("-");
      } 
      MyInsurancesV2Activity.k(this.b).setState(aor.CONTENT);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lhk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */