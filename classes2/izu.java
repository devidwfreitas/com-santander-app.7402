import android.support.v4.view.ViewPager;
import com.santander.app.idsantander.presentation.IdSantanderTutorialCapturaQrCodeActivity;

public class izu implements ViewPager.OnPageChangeListener {
  public izu(IdSantanderTutorialCapturaQrCodeActivity paramIdSantanderTutorialCapturaQrCodeActivity) {}
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    IdSantanderTutorialCapturaQrCodeActivity.a(this.a, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\izu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */