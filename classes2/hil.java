import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;
import com.santander.app.emprestimo.antecipacaoDT.activity.TermoContratacaoEmprestimoActivity;

public class hil implements View.OnClickListener {
  public hil(TermoContratacaoEmprestimoActivity paramTermoContratacaoEmprestimoActivity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_Antecipar13_Termo_Acao", "NaoConcordo");
    Intent intent = new Intent((Context)TermoContratacaoEmprestimoActivity.f(this.a), SimulacaoAntecipacaoDTPasso1Activity.class);
    intent.setFlags(67108864);
    TermoContratacaoEmprestimoActivity.f(this.a).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */