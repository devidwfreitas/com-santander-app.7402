import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso2Activity;
import com.santander.app.emprestimo.antecipacaoDT.activity.TermoContratacaoEmprestimoActivity;
import java.io.Serializable;

public class hii implements View.OnClickListener {
  public hii(SimulacaoAntecipacaoDTPasso2Activity paramSimulacaoAntecipacaoDTPasso2Activity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_Antecipar13_Acao", "Continuar");
    Intent intent = new Intent((Context)SimulacaoAntecipacaoDTPasso2Activity.a(this.a), TermoContratacaoEmprestimoActivity.class);
    intent.putExtra("simularAntecipacaoRequest", (Serializable)SimulacaoAntecipacaoDTPasso2Activity.b(this.a));
    intent.putExtra("listaValoresCET", SimulacaoAntecipacaoDTPasso2Activity.c(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hii.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */