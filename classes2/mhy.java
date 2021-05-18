import android.support.v4.view.ViewPager;
import android.view.View;

public class mhy implements ViewPager.PageTransformer {
  private static final float a = 0.65F;
  
  public void transformPage(View paramView, float paramFloat) {
    float f = Math.abs(Math.abs(paramFloat) - 1.0F);
    if (paramFloat <= 1.0F) {
      float f1 = Math.max(0.65F, 1.0F - Math.abs(paramFloat));
      if (paramFloat < 0.0F) {
        paramView.setScaleX(f / 2.0F + 0.55F);
      } else {
        paramView.setScaleY(f / 2.0F + 0.55F);
      } 
      paramView.setScaleX(f1);
      paramView.setScaleY(f1);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */