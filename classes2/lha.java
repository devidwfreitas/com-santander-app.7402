import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;
import java.util.ArrayList;

public class lha implements kxl<kpv> {
  public lha(MyInsurancesV2Activity paramMyInsurancesV2Activity) {}
  
  public void a(kpv paramkpv) {
    boolean bool = false;
    if (this.a.isFinishing())
      return; 
    MyInsurancesV2Activity.r(this.a).setState(aor.LOADING);
    if (paramkpv != null && paramkpv.a() != null && paramkpv.a().size() > 0) {
      MyInsurancesV2Activity.a(this.a, paramkpv);
      ArrayList<kpz> arrayList = new ArrayList();
      for (int i = 0; i < paramkpv.a().size(); i++) {
        kpz kpz = paramkpv.a().get(i);
        if (!mgh.a(kpz.a().h()))
          arrayList.add(kpz); 
      } 
      MyInsurancesV2Activity.s(this.a).a(arrayList);
      MyInsurancesV2Activity myInsurancesV2Activity = this.a;
      if (arrayList.size() > 0)
        bool = true; 
      MyInsurancesV2Activity.a(myInsurancesV2Activity, bool);
    } else {
      MyInsurancesV2Activity.a(this.a, false);
    } 
    MyInsurancesV2Activity.r(this.a).setState(aor.CONTENT);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lha.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */