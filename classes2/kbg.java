import android.app.Dialog;
import android.view.View;
import android.widget.SeekBar;
import com.santander.app.perfil.activity.InvestimentosNoAtmActivity;

public class kbg implements View.OnClickListener {
  public kbg(InvestimentosNoAtmActivity paramInvestimentosNoAtmActivity, SeekBar paramSeekBar, int paramInt, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    this.a.setProgress(this.b);
    this.d.a(this.b);
    if (InvestimentosNoAtmActivity.l(this.d) != null) {
      String str = InvestimentosNoAtmActivity.l(this.d);
      byte b2 = -1;
      byte b1 = b2;
      switch (str.hashCode()) {
        default:
          b1 = b2;
        case 79:
        case 81:
        case 82:
          switch (b1) {
            default:
              this.c.dismiss();
              return;
            case 0:
              frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_NaoBloquear_Confirmacao_PopUp_Acao", "Cancelar");
            case 1:
              frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Bloquear18hAte9h_Confirmacao_PopUp_Acao", "Cancelar");
            case 2:
              break;
          } 
          break;
        case 83:
          b1 = b2;
          if (str.equals("S"))
            b1 = 0; 
        case 80:
          b1 = b2;
          if (str.equals("P"))
            b1 = 1; 
        case 78:
          b1 = b2;
          if (str.equals("N"))
            b1 = 2; 
      } 
      frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Bloquear24h_Confirmacao_PopUp_Acao", "Cancelar");
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kbg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */