import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;
import com.santander.app.emprestimo.antecipacaoIR.activity.TermoContratacaoEmprestimoAntecipacaoIRActivity;

public class hjv implements View.OnClickListener {
  public hjv(TermoContratacaoEmprestimoAntecipacaoIRActivity paramTermoContratacaoEmprestimoAntecipacaoIRActivity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_AnteciparIR_Termo_Acao", "NaoConcordo");
    Intent intent = new Intent((Context)TermoContratacaoEmprestimoAntecipacaoIRActivity.f(this.a), SimulacaoAntecipacaoIRPasso1Activity.class);
    intent.setFlags(67108864);
    TermoContratacaoEmprestimoAntecipacaoIRActivity.f(this.a).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */