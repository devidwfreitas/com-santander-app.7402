import android.view.ViewTreeObserver;
import com.santander.app.PoupancaAplicacaoActivity;

public class fkg implements ViewTreeObserver.OnScrollChangedListener {
  public fkg(PoupancaAplicacaoActivity paramPoupancaAplicacaoActivity, fou paramfou) {}
  
  public void onScrollChanged() {
    if (PoupancaAplicacaoActivity.a(this.b) == this.a.getCount() - 1) {
      if (PoupancaAplicacaoActivity.b(this.b).a() == 0) {
        frq.d("Investimentos_Poupanca_Aplicar_Data_Opcao_Acao", "Hoje");
        frq.d("Investimentos_Poupanca_Aplicar_Data_Acao", PoupancaAplicacaoActivity.c(this.b).b());
      } else if (PoupancaAplicacaoActivity.b(this.b).a() == 1) {
        frq.d("Investimentos_Poupanca_Aplicar_Data_Opcao_Acao", "DataAgendada");
        frq.d("Investimentos_Poupanca_Aplicar_Data_Acao", PoupancaAplicacaoActivity.d(this.b).b());
      } else {
        frq.d("Investimentos_Poupanca_Aplicar_Data_Opcao_Acao", "DepositoProgramado");
      } 
      PoupancaAplicacaoActivity.a(this.b, 0);
      return;
    } 
    PoupancaAplicacaoActivity.e(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */