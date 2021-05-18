import android.app.Activity;
import android.support.v4.view.ViewPager;
import com.santander.app.RendaFixaResgateActivity;
import com.santander.app.widget.Indicator;

public class fmp implements ViewPager.OnPageChangeListener {
  public fmp(RendaFixaResgateActivity paramRendaFixaResgateActivity) {}
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    String str;
    if (paramInt == 1) {
      RendaFixaResgateActivity.d(this.a).setVisibility(8);
      RendaFixaResgateActivity.b(this.a).setVisibility(0);
      RendaFixaResgateActivity.e(this.a).setSelected(1);
    } else {
      RendaFixaResgateActivity.d(this.a).setVisibility(0);
      RendaFixaResgateActivity.b(this.a).setVisibility(8);
      RendaFixaResgateActivity.e(this.a).setSelected(0);
    } 
    gpm.a(RendaFixaResgateActivity.c(this.a), RendaFixaResgateActivity.f(this.a), RendaFixaResgateActivity.g(this.a), (Indicator)null, paramInt, (Activity)RendaFixaResgateActivity.h(this.a));
    if (paramInt == 1) {
      str = "Valor Total";
    } else {
      str = "Valor Parcial";
    } 
    frq.d("Investimentos_RendaFixa_Resgate_Tipo_Acao", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */