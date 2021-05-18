import android.view.View;
import com.santander.app.cambio.transferenciaexterior.presentation.DadosOperacaoActivity;

public class gcj implements View.OnClickListener {
  public gcj(DadosOperacaoActivity paramDadosOperacaoActivity) {}
  
  public void onClick(View paramView) {
    DadosOperacaoActivity.g(this.a).dismiss();
    DadosOperacaoActivity.a(this.a, new gdo((gck)this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gcj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */