import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;

public class lgw implements View.OnClickListener {
  public lgw(MyInsurancesV2Activity paramMyInsurancesV2Activity, kud paramkud) {}
  
  public void onClick(View paramView) {
    if (!MyInsurancesV2Activity.l(this.b) && !MyInsurancesV2Activity.m(this.b)) {
      MyInsurancesV2Activity.a(this.b, this.a, mhj.J(this.a.d().p()));
      return;
    } 
    if (!mzr.a()) {
      Intent intent = new Intent((Context)this.b, ContractActivity.class);
      if (MyInsurancesV2Activity.m(this.b)) {
        intent.putExtra(MyInsurancesV2Activity.a, this.a.d().p());
        frq.d("Seguros_Contratacao_Vida_Acao", "BotaoContratar");
      } else if (MyInsurancesV2Activity.l(this.b)) {
        intent.putExtra(MyInsurancesV2Activity.a, this.a.d().p());
      } 
      this.b.startActivity(intent);
      return;
    } 
    mhj.c((Context)this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lgw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */