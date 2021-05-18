import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.emprestimo.antecipacaoDT.activity.CustoEfetivoTotalAntecipacaoDTActivity;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;

public class hhx implements View.OnClickListener {
  public hhx(CustoEfetivoTotalAntecipacaoDTActivity paramCustoEfetivoTotalAntecipacaoDTActivity, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    Intent intent = new Intent((Context)this.b, SimulacaoAntecipacaoDTPasso1Activity.class);
    intent.setFlags(67108864);
    this.b.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hhx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */