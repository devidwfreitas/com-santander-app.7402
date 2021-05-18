import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.SeekBar;
import com.santander.app.perfil.activity.InvestimentoNoAtmConfirmacaoActivity;
import com.santander.app.perfil.activity.InvestimentosNoAtmActivity;
import java.io.Serializable;

public class kbf implements View.OnClickListener {
  public kbf(InvestimentosNoAtmActivity paramInvestimentosNoAtmActivity, Dialog paramDialog, SeekBar paramSeekBar, int paramInt1, int paramInt2) {}
  
  public void onClick(View paramView) {
    if (InvestimentosNoAtmActivity.j(this.e) != null)
      if (InvestimentosNoAtmActivity.l(this.e) != null) {
        Intent intent;
        String str = InvestimentosNoAtmActivity.l(this.e);
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
                this.a.dismiss();
                this.b.setProgress(this.c);
                this.e.a(this.c);
                InvestimentosNoAtmActivity.j(this.e).g(InvestimentosNoAtmActivity.l(this.e));
                intent = new Intent((Context)this.e, InvestimentoNoAtmConfirmacaoActivity.class);
                intent.putExtra("investimento_no_atm", (Serializable)InvestimentosNoAtmActivity.j(this.e));
                intent.putExtra("posicaoFinal", this.d);
                intent.putExtra("posicaoInicial", this.c);
                intent.putExtra("cuentaBean", (Serializable)InvestimentosNoAtmActivity.h(this.e));
                this.e.startActivity(intent);
                return;
              case 0:
                frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_NaoBloquear_Confirmacao_PopUp_Acao", "Confirmar");
              case 1:
                frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Bloquear18hAte9h_Confirmacao_PopUp_Acao", "Confirmar");
              case 2:
                break;
            } 
            break;
          case 83:
            b1 = b2;
            if (intent.equals("S"))
              b1 = 0; 
          case 80:
            b1 = b2;
            if (intent.equals("P"))
              b1 = 1; 
          case 78:
            b1 = b2;
            if (intent.equals("N"))
              b1 = 2; 
        } 
        frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Bloquear24h_Confirmacao_PopUp_Acao", "Confirmar");
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kbf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */