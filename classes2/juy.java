import android.view.View;
import com.santander.app.pagamentos.titulos.presentation.FormaPagamentosDDAActivity;

public class juy implements View.OnClickListener {
  public juy(FormaPagamentosDDAActivity paramFormaPagamentosDDAActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Pagamentos_DDA_DataDoPagamento", "AgendarPara");
    if (FormaPagamentosDDAActivity.d(this.a).c()) {
      frq.d("Pagamentos_DDA_PopUp_Acao", "AgendarPagamentoDeBoleto");
      FormaPagamentosDDAActivity.e(this.a).show();
      this.a.c();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\juy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */