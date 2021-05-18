import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;
import com.santander.app.emprestimo.antecipacaoDT.activity.TermoContratacaoEmprestimoActivity;

public class hio implements View.OnClickListener {
  public hio(TermoContratacaoEmprestimoActivity paramTermoContratacaoEmprestimoActivity, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    Intent intent = new Intent((Context)TermoContratacaoEmprestimoActivity.f(this.b), SimulacaoAntecipacaoDTPasso1Activity.class);
    TermoContratacaoEmprestimoActivity.f(this.b).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hio.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */