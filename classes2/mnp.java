import android.view.View;
import com.santander.app.transferencia.presentation.ConfirmacaoTransferenciaActivity;

public class mnp implements View.OnClickListener {
  public mnp(ConfirmacaoTransferenciaActivity paramConfirmacaoTransferenciaActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Transferencia_Acao", "BotaoConfirmar");
    if (ConfirmacaoTransferenciaActivity.a(this.a).getText().toString() != null || !ConfirmacaoTransferenciaActivity.a(this.a).getText().toString().equals(""))
      ConfirmacaoTransferenciaActivity.b(this.a).j(ConfirmacaoTransferenciaActivity.a(this.a).getText().toString()); 
    if (!miq.C().w() || !miq.C().f().C().b("00000122")) {
      ConfirmacaoTransferenciaActivity.c(this.a);
      return;
    } 
    this.a.a(0, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mnp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */