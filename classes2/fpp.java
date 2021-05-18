import android.app.Activity;
import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;

public class fpp extends PagerAdapter {
  private Context a;
  
  private fpq b;
  
  public fpp(Activity paramActivity, fpq paramfpq) {
    this.a = (Context)paramActivity;
    this.b = paramfpq;
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject) {
    ((ViewPager)paramView).removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.b.a();
  }
  
  public Object instantiateItem(View paramView, int paramInt) {
    return this.b.a(this.a, paramView, paramInt);
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fpp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */