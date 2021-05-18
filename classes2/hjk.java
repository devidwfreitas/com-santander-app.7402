import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.emprestimo.antecipacaoIR.activity.CustoEfetivoTotalAntecipacaoIRActivity;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;

public class hjk implements View.OnClickListener {
  public hjk(CustoEfetivoTotalAntecipacaoIRActivity paramCustoEfetivoTotalAntecipacaoIRActivity, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    Intent intent = new Intent((Context)this.b, SimulacaoAntecipacaoIRPasso1Activity.class);
    this.b.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */