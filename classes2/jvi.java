import android.view.View;
import com.santander.app.pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity;

public class jvi implements View.OnClickListener {
  public jvi(PagamentosCodigoBarrasActivity paramPagamentosCodigoBarrasActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Pagamentos_Pagamento_CodigoDeBarras_Acao", "Continuar");
    PagamentosCodigoBarrasActivity.a(this.a).a(PagamentosCodigoBarrasActivity.c(this.a).getText().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jvi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */