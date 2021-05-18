import android.view.View;
import com.santander.app.PagamentoCartoesConfirmacaoAction;

public class fiy implements View.OnClickListener {
  public fiy(PagamentoCartoesConfirmacaoAction paramPagamentoCartoesConfirmacaoAction) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_PagamentoDaFatura_Acao", "Confirmar");
    PagamentoCartoesConfirmacaoAction.a(this.a, new fiz(this.a, null));
    PagamentoCartoesConfirmacaoAction.a(this.a).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fiy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */