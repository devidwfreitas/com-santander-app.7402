import android.view.View;
import com.santander.app.CadastramentoFacturaActivity;

public class fgv implements View.OnClickListener {
  public fgv(CadastramentoFacturaActivity paramCadastramentoFacturaActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_CadastrarFaturaPorEmail_Acao", "SelecionarEmail");
    if (CadastramentoFacturaActivity.a(this.a).getCurrentItem() < CadastramentoFacturaActivity.a(this.a).getAdapter().getCount() - 1) {
      CadastramentoFacturaActivity.a(this.a).setCurrentItem(CadastramentoFacturaActivity.a(this.a).getCurrentItem() + 1, true);
      CadastramentoFacturaActivity.f(this.a);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */