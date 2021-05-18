package android.support.design.widget;

import android.support.v4.view.ViewPager;

public class TabLayout$ViewPagerOnTabSelectedListener implements TabLayout$OnTabSelectedListener {
  private final ViewPager mViewPager;
  
  public TabLayout$ViewPagerOnTabSelectedListener(ViewPager paramViewPager) {
    this.mViewPager = paramViewPager;
  }
  
  public void onTabReselected(TabLayout$Tab paramTabLayout$Tab) {}
  
  public void onTabSelected(TabLayout$Tab paramTabLayout$Tab) {
    this.mViewPager.setCurrentItem(paramTabLayout$Tab.getPosition());
  }
  
  public void onTabUnselected(TabLayout$Tab paramTabLayout$Tab) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TabLayout$ViewPagerOnTabSelectedListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */