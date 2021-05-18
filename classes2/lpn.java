import android.view.View;
import java.util.Date;

class lpn implements View.OnClickListener {
  lpn(loz paramloz) {}
  
  public void onClick(View paramView) {
    if (loz.h(this.a)) {
      Date date = new Date();
      if (mgt.d(loz.a(this.a).i())) {
        frq.d("Seguros_Contratacao_Vida_Proposta_Escolha_InicioVigencia", mhj.a(date, "ddMMyyyy"));
        frq.d("Seguros_Contratacao_Vida_Resumo_Acao", "Confirmar");
      } else if (mgt.b(loz.a(this.a).i())) {
        frq.d("Seguros_Contratacao_AP_Proposta_Escolha_InicioVigencia", mhj.a(date, "ddMMyyyy"));
        frq.d("Seguros_Contratacao_AP_Resumo_Acao", "Confirmar");
      } 
      loz.i(this.a);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */