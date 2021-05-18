import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.investimentos.fundos.presentation.ConfirmacaoAplicacaoActivity;
import com.santander.app.investimentos.fundos.presentation.TermosActivity;
import java.io.Serializable;

public class jfv implements View.OnClickListener {
  public jfv(ConfirmacaoAplicacaoActivity paramConfirmacaoAplicacaoActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a.i, TermosActivity.class);
    intent.putExtra("fundos_confirmacao", (Serializable)ConfirmacaoAplicacaoActivity.a(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jfv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */