import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.santander.app.seguros.ui.consultative.activities.HireInsuranceActivity;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;

public class lgt implements lir {
  public lgt(HireInsuranceActivity paramHireInsuranceActivity) {}
  
  public void a(ktq paramktq) {
    String str;
    ipi ipi = miq.C().f().C();
    if (!mgt.b(paramktq.p()) && !mgt.d(paramktq.p())) {
      int i;
      if (mgt.a(paramktq.p()) || mgt.e(paramktq.p())) {
        i = mhj.J(paramktq.p());
        if (i <= -1) {
          mhj.c((Context)this.a, this.a.getResources().getString(2131297122));
          return;
        } 
      } else {
        return;
      } 
      if (miq.C().s()) {
        str = this.a.getString(2131296564);
      } else {
        str = this.a.getString(2131296563);
      } 
      mhj.a((Activity)this.a, str, this.a.getResources().getString(i));
      return;
    } 
    if (mhj.e()) {
      mhj.c((Context)this.a, this.a.getResources().getString(2131297122));
      return;
    } 
    if (ipi.b("00000109")) {
      if (!mzr.a()) {
        Intent intent = new Intent((Context)this.a, ContractActivity.class);
        if (mgt.d(str.p()))
          frq.d("Seguros_Contratacao_Vida_Acao", "BotaoContratar"); 
        intent.putExtra(HireInsuranceActivity.a, str.p());
        this.a.startActivity(intent);
        return;
      } 
      mhj.c((Context)this.a);
      return;
    } 
    mhj.c((Context)this.a, this.a.getResources().getString(2131297122));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lgt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */