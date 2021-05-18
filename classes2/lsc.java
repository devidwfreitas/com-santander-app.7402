import android.support.v4.view.ViewPager;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;
import java.util.List;

public class lsc implements ViewPager.OnPageChangeListener {
  public lsc(SinisterDetailActivity paramSinisterDetailActivity, List paramList) {}
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    if (paramInt < SinisterDetailActivity.f(this.b)) {
      SinisterDetailActivity.a(this.b, false);
    } else {
      SinisterDetailActivity.a(this.b, true);
    } 
    SinisterDetailActivity.c(this.b, paramInt);
    SinisterDetailActivity.a(this.b, paramInt, SinisterDetailActivity.e(this.b), ((kvu)this.a.get(paramInt)).c());
    SinisterDetailActivity.d(this.b, paramInt);
    SinisterDetailActivity.e(this.b, paramInt);
    SinisterDetailActivity.a(this.b, SinisterDetailActivity.f(this.b, paramInt));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */