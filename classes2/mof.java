import android.view.View;
import com.santander.app.transferencia.presentation.FormaTransferenciaActivity;

public class mof implements View.OnClickListener {
  public mof(FormaTransferenciaActivity paramFormaTransferenciaActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Transferencia_Acao", "BotaoContinuar");
    if (FormaTransferenciaActivity.a(this.a).isChecked()) {
      if (FormaTransferenciaActivity.k(this.a).getSelectedItemPosition() != 0) {
        FormaTransferenciaActivity.l(this.a);
        FormaTransferenciaActivity.m(this.a).a(FormaTransferenciaActivity.f(this.a));
        return;
      } 
      hav.d(FormaTransferenciaActivity.n(this.a), "Por favor, informe o número de vezes.");
      return;
    } 
    if (FormaTransferenciaActivity.f(this.a).h() && !FormaTransferenciaActivity.o(this.a)) {
      hav.d(FormaTransferenciaActivity.n(this.a), "A data de agendamento não pode ser sábado ou domingo. Por favor, informe uma data válida.");
      return;
    } 
    FormaTransferenciaActivity.f(this.a).b(false);
    FormaTransferenciaActivity.l(this.a);
    FormaTransferenciaActivity.m(this.a).a(FormaTransferenciaActivity.f(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mof.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */