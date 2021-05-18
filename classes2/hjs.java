import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso2Activity;
import com.santander.app.emprestimo.antecipacaoIR.activity.TermoContratacaoEmprestimoAntecipacaoIRActivity;
import java.io.Serializable;

public class hjs implements View.OnClickListener {
  public hjs(SimulacaoAntecipacaoIRPasso2Activity paramSimulacaoAntecipacaoIRPasso2Activity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_AnteciparIR_Acao", "Continuar");
    SimulacaoAntecipacaoIRPasso2Activity.b(this.a);
    Intent intent = new Intent((Context)SimulacaoAntecipacaoIRPasso2Activity.a(this.a), TermoContratacaoEmprestimoAntecipacaoIRActivity.class);
    intent.putExtra("simularAntecipacaoRequest", (Serializable)SimulacaoAntecipacaoIRPasso2Activity.c(this.a));
    intent.putExtra("listaValoresCET", SimulacaoAntecipacaoIRPasso2Activity.d(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */