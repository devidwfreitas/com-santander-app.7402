import android.text.style.ClickableSpan;
import android.view.View;
import com.santander.app.investimentos.fundos.presentation.ConfirmacaoAplicacaoActivity;

public class jgb extends ClickableSpan {
  public jgb(ConfirmacaoAplicacaoActivity paramConfirmacaoAplicacaoActivity) {}
  
  public void onClick(View paramView) {
    String str = "http://www.santander.com.br/document/wps/P_{cod}.pdf".replace("{cod}", ConfirmacaoAplicacaoActivity.a(this.a).w());
    this.a.b(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jgb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */