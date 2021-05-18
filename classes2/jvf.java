import android.view.View;
import com.santander.app.pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity;

public class jvf implements View.OnClickListener {
  public jvf(PagamentosCodigoBarrasActivity paramPagamentosCodigoBarrasActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Pagamentos_Pagamento_CodigoDeBarras_Acao", "LeitorDeCodigoDeBarras");
    PagamentosCodigoBarrasActivity.a(this.a).b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jvf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */