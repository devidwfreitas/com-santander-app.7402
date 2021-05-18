import android.support.v4.view.ViewPager;
import android.view.View;
import me.relex.circleindicator.CircleIndicator;

public class nnj implements ViewPager.OnPageChangeListener {
  public nnj(CircleIndicator paramCircleIndicator) {}
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    if (CircleIndicator.a(this.a).getAdapter() == null || CircleIndicator.a(this.a).getAdapter().getCount() <= 0)
      return; 
    if (CircleIndicator.b(this.a).isRunning()) {
      CircleIndicator.b(this.a).end();
      CircleIndicator.b(this.a).cancel();
    } 
    if (CircleIndicator.c(this.a).isRunning()) {
      CircleIndicator.c(this.a).end();
      CircleIndicator.c(this.a).cancel();
    } 
    if (CircleIndicator.d(this.a) >= 0) {
      View view1 = this.a.getChildAt(CircleIndicator.d(this.a));
      if (view1 != null) {
        view1.setBackgroundResource(CircleIndicator.e(this.a));
        CircleIndicator.b(this.a).setTarget(view1);
        CircleIndicator.b(this.a).start();
      } 
    } 
    View view = this.a.getChildAt(paramInt);
    if (view != null) {
      view.setBackgroundResource(CircleIndicator.f(this.a));
      CircleIndicator.c(this.a).setTarget(view);
      CircleIndicator.c(this.a).start();
    } 
    CircleIndicator.a(this.a, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nnj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */