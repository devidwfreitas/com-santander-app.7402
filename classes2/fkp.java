import android.support.v4.view.ViewPager;
import com.santander.app.PoupancaResgateActivity;
import com.santander.app.widget.Indicator;

public class fkp implements ViewPager.OnPageChangeListener {
  public fkp(PoupancaResgateActivity paramPoupancaResgateActivity) {}
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    String str;
    PoupancaResgateActivity.f(this.a).setSelected(paramInt);
    if (paramInt == 0) {
      PoupancaResgateActivity.g(this.a).setVisibility(0);
      PoupancaResgateActivity.h(this.a).setVisibility(8);
    } else {
      PoupancaResgateActivity.g(this.a).setVisibility(8);
      PoupancaResgateActivity.h(this.a).setVisibility(0);
    } 
    gpm.a(PoupancaResgateActivity.i(this.a), PoupancaResgateActivity.j(this.a), PoupancaResgateActivity.k(this.a), (Indicator)null, paramInt, PoupancaResgateActivity.l(this.a));
    if (PoupancaResgateActivity.h(this.a).getVisibility() == 0) {
      str = "ValorTotal";
    } else {
      str = "ValorParcial";
    } 
    frq.d("Investimentos_Poupanca_Resgatar_Tipo_Acao", str);
    if (PoupancaResgateActivity.h(this.a).getVisibility() == 0)
      frq.d("Investimentos_Poupanca_Resgatar_Tipo_Acao", PoupancaResgateActivity.h(this.a).getText().toString()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */