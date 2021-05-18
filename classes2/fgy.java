import android.app.Activity;
import android.view.View;
import com.santander.app.CadastramentoTransOkActivity;

public class fgy implements View.OnClickListener {
  public fgy(CadastramentoTransOkActivity paramCadastramentoTransOkActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_CadastrarFaturaPorEmail_Comprovante_Acaos", "Compartilhar");
    String str = CadastramentoTransOkActivity.a(this.a).a();
    myj.a((Activity)CadastramentoTransOkActivity.a(this.a), "Cadastro de fatura por e-mail", "", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */