package android.support.v4.view;

import android.view.View;
import java.util.Comparator;

class ViewPager$ViewPositionComparator implements Comparator<View> {
  public int compare(View paramView1, View paramView2) {
    ViewPager$LayoutParams viewPager$LayoutParams1 = (ViewPager$LayoutParams)paramView1.getLayoutParams();
    ViewPager$LayoutParams viewPager$LayoutParams2 = (ViewPager$LayoutParams)paramView2.getLayoutParams();
    return (viewPager$LayoutParams1.isDecor != viewPager$LayoutParams2.isDecor) ? (viewPager$LayoutParams1.isDecor ? 1 : -1) : (viewPager$LayoutParams1.position - viewPager$LayoutParams2.position);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPager$ViewPositionComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */