import android.text.style.ClickableSpan;
import android.view.View;
import com.santander.app.investimentos.fundos.presentation.ConfirmacaoAplicacaoActivity;

public class jga extends ClickableSpan {
  public jga(ConfirmacaoAplicacaoActivity paramConfirmacaoAplicacaoActivity) {}
  
  public void onClick(View paramView) {
    String str = "http://www.santander.com.br/document/wps/R_{cod}.pdf".replace("{cod}", ConfirmacaoAplicacaoActivity.a(this.a).w());
    this.a.b(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jga.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */