import android.support.v4.view.ViewPager;
import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;

public class lhi implements ViewPager.OnPageChangeListener {
  public lhi(MyInsurancesV2Activity paramMyInsurancesV2Activity) {}
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    MyInsurancesV2Activity.a(this.a, paramInt);
    MyInsurancesV2Activity.b(this.a, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lhi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */