import android.app.Activity;
import android.view.View;
import android.widget.LinearLayout;
import com.santander.app.PagamentoCartoesTransOkAction;

public class fjb implements View.OnClickListener {
  public fjb(PagamentoCartoesTransOkAction paramPagamentoCartoesTransOkAction, LinearLayout paramLinearLayout1, LinearLayout paramLinearLayout2) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_PagamentoDaFatura_Comprovante_Acao", "Compartilhar");
    this.a.setVisibility(8);
    this.b.setVisibility(8);
    String str = PagamentoCartoesTransOkAction.a(this.c).a();
    myj.a((Activity)PagamentoCartoesTransOkAction.a(this.c), "", "", str);
    this.a.setVisibility(0);
    this.b.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */