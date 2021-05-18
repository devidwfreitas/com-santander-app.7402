import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;
import com.santander.app.seguros.ui.sinister.activities.SurveyActivity;

public class lrx implements View.OnClickListener {
  public lrx(SinisterDetailActivity paramSinisterDetailActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Vistoria_Acao", "RemarcarVistoria");
    Intent intent = new Intent((Context)this.a, SurveyActivity.class);
    intent.putExtra("sinister-key", (new ejm()).b(SinisterDetailActivity.k(this.a)));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lrx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */