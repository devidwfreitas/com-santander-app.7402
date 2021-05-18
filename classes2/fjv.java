import android.support.v4.view.ViewPager;
import com.santander.app.ParcelamentoFacturaActivity;

public class fjv implements ViewPager.OnPageChangeListener {
  public fjv(ParcelamentoFacturaActivity paramParcelamentoFacturaActivity) {}
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    gpm.a(ParcelamentoFacturaActivity.c(this.a), ParcelamentoFacturaActivity.d(this.a), ParcelamentoFacturaActivity.e(this.a), ParcelamentoFacturaActivity.f(this.a), paramInt, ParcelamentoFacturaActivity.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */