import android.view.View;
import android.widget.AdapterView;
import com.santander.app.dpp.DPPPreenchimentoActivity;

public class hdu implements AdapterView.OnItemSelectedListener {
  public hdu(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    if (DPPPreenchimentoActivity.s(this.a)) {
      String str;
      if (DPPPreenchimentoActivity.a(this.a)) {
        str = "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Dia_Acao";
      } else {
        str = "Investimentos_Poupanca_DepositoProgramado_Terceiros_Dia_Acao";
      } 
      frq.d(str, DPPPreenchimentoActivity.h(this.a).getItemAtPosition(DPPPreenchimentoActivity.h(this.a).getSelectedItemPosition()).toString());
    } 
    DPPPreenchimentoActivity.c(this.a, true);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */