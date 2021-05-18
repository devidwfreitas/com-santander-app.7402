import android.support.v4.view.ViewPager;
import android.view.View;

final class gpq implements View.OnClickListener {
  gpq(ViewPager paramViewPager) {}
  
  public void onClick(View paramView) {
    if (this.a.getCurrentItem() > 0)
      this.a.setCurrentItem(this.a.getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */