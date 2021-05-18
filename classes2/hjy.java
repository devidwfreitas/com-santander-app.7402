import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;
import com.santander.app.emprestimo.antecipacaoIR.activity.TermoContratacaoEmprestimoAntecipacaoIRActivity;

public class hjy implements View.OnClickListener {
  public hjy(TermoContratacaoEmprestimoAntecipacaoIRActivity paramTermoContratacaoEmprestimoAntecipacaoIRActivity, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    Intent intent = new Intent((Context)TermoContratacaoEmprestimoAntecipacaoIRActivity.f(this.b), SimulacaoAntecipacaoIRPasso1Activity.class);
    intent.addFlags(67108864);
    TermoContratacaoEmprestimoAntecipacaoIRActivity.f(this.b).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */