import android.text.style.ClickableSpan;
import android.view.View;
import com.santander.app.investimentos.fundos.presentation.ConfirmacaoAplicacaoActivity;

public class jgc extends ClickableSpan {
  public jgc(ConfirmacaoAplicacaoActivity paramConfirmacaoAplicacaoActivity) {}
  
  public void onClick(View paramView) {
    ConfirmacaoAplicacaoActivity.b(this.a).b(ConfirmacaoAplicacaoActivity.a(this.a).w());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jgc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */