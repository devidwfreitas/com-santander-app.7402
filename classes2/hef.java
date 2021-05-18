import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import com.santander.app.dpp.DPPCondicoesContratoActivity;
import com.santander.app.dpp.DPPConfirmacaoActivity;
import com.santander.app.dpp.DPPPreenchimentoActivity;

public class hef extends AsyncTask<Void, Void, heo> {
  hef(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  protected heo a(Void... paramVarArgs) {
    try {
      return hat.u().c();
    } catch (Exception exception) {
      Log.e("DPPoupanca", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(heo paramheo) {
    Bundle bundle;
    if (DPPPreenchimentoActivity.t(this.a) != null && DPPPreenchimentoActivity.t(this.a).isShowing()) {
      DPPPreenchimentoActivity.t(this.a).cancel();
      DPPPreenchimentoActivity.a(this.a, null);
    } 
    if (paramheo.a().equals("0")) {
      String str = DPPPreenchimentoActivity.g(this.a).getText().toString().trim().replace("R", "").replace("$", "").replace(".", "").replace(",", ".");
      if (Float.parseFloat(paramheo.d()) <= Float.parseFloat(str)) {
        Intent intent;
        if (DPPPreenchimentoActivity.c(this.a) == 0) {
          if (DPPPreenchimentoActivity.j(this.a) && this.a.d.getVisibility() != 0) {
            intent = new Intent(this.a.getApplicationContext(), DPPCondicoesContratoActivity.class);
            bundle = new Bundle();
            DPPPreenchimentoActivity.n(this.a).u("S");
            bundle.putSerializable("dpp", DPPPreenchimentoActivity.n(this.a));
            bundle.putInt("novaPoupanca", 0);
            bundle.putInt("opcao", 0);
          } else {
            intent = new Intent(this.a.getApplicationContext(), DPPConfirmacaoActivity.class);
            bundle = new Bundle();
            DPPPreenchimentoActivity.n(this.a).u("N");
            bundle.putSerializable("dpp", DPPPreenchimentoActivity.n(this.a));
            bundle.putInt("opcao", 0);
            bundle.putInt("novaPoupanca", 1);
          } 
          bundle.putString("isProprioCliente", String.valueOf(DPPPreenchimentoActivity.a(this.a)));
        } else {
          intent = new Intent(this.a.getApplicationContext(), DPPConfirmacaoActivity.class);
          bundle = new Bundle();
          bundle.putSerializable("dpp", DPPPreenchimentoActivity.n(this.a));
          bundle.putInt("opcao", 1);
          bundle.putInt("novaPoupanca", 1);
        } 
        intent.putExtras(bundle);
        this.a.startActivity(intent);
        return;
      } 
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Valor inferior ao minimo.");
      return;
    } 
    hat.d().a((Activity)DPPPreenchimentoActivity.i(this.a), (fvu)bundle, true, false);
  }
  
  public void onPreExecute() {
    DPPPreenchimentoActivity.a(this.a, mxn.b((Activity)DPPPreenchimentoActivity.i(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hef.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */