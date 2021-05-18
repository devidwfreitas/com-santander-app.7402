import android.support.v4.view.ViewPager;
import com.santander.app.seguros.ui.sinister.activities.MySinisterActivity;

public class lqo implements ViewPager.OnPageChangeListener {
  public lqo(MySinisterActivity paramMySinisterActivity) {}
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    switch (paramInt) {
      default:
        return;
      case 0:
        frq.d("Seguros_Sinistro_MeusSinistros_Acao", "SinistrosAbertos");
        return;
      case 1:
        break;
    } 
    frq.d("Seguros_Sinistro_MeusSinistros_Acao", "SinistrosConcluidos");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */