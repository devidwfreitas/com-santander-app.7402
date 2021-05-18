import android.support.annotation.ColorRes;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;

class laf implements ViewPager.OnPageChangeListener {
  laf(lae paramlae, ViewPager paramViewPager) {}
  
  private void a(View paramView, @ColorRes int paramInt) {
    if (paramView == null)
      return; 
    ((ImageView)paramView).getDrawable().setTint(ContextCompat.getColor(lae.a(this.b), paramInt));
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    for (int i = 0; i < this.b.getCount(); i++) {
      int j;
      if (i == paramInt) {
        j = 2131624043;
      } else {
        j = 2131624057;
      } 
      a(this.a.findViewWithTag("view" + i), j);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\laf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */