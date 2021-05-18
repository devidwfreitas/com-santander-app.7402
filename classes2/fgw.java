import android.support.v4.view.ViewPager;
import com.santander.app.CadastramentoFacturaActivity;

public class fgw implements ViewPager.OnPageChangeListener {
  public fgw(CadastramentoFacturaActivity paramCadastramentoFacturaActivity) {}
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    frq.d("Cartoes_CadastrarFaturaPorEmail_Acao", "SelecionarEmail");
    CadastramentoFacturaActivity.f(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */