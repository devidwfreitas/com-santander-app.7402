import android.view.View;
import com.santander.app.PagamentoFacturaCartoesActivity;
import com.santander.app.faturas.activity.FaturasActivity;

public class ief implements View.OnClickListener {
  public ief(FaturasActivity paramFaturasActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_Fatura_ResumoDaFatura_Acao", "PagarFatura");
    if (mzr.a()) {
      this.a.a();
      return;
    } 
    this.a.a(PagamentoFacturaCartoesActivity.class);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ief.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */