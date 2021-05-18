import android.view.ViewTreeObserver;
import com.santander.app.PoupancaResgateActivity;

public class fkn implements ViewTreeObserver.OnScrollChangedListener {
  public fkn(PoupancaResgateActivity paramPoupancaResgateActivity, fou paramfou) {}
  
  public void onScrollChanged() {
    if (PoupancaResgateActivity.a(this.b) == this.a.getCount() + 1) {
      String str;
      if (PoupancaResgateActivity.b(this.b).a() == 0) {
        str = "Hoje";
      } else {
        str = "DataAgendada";
      } 
      frq.d("Investimentos_Poupanca_Resgatar_Data_Opcao_Acao", str);
      if (PoupancaResgateActivity.b(this.b).a() == 0) {
        str = PoupancaResgateActivity.c(this.b).b();
      } else {
        str = PoupancaResgateActivity.d(this.b).b();
      } 
      frq.d("Investimentos_Poupanca_Resgatar_Data_Acao", str);
      PoupancaResgateActivity.a(this.b, 0);
      return;
    } 
    PoupancaResgateActivity.e(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */