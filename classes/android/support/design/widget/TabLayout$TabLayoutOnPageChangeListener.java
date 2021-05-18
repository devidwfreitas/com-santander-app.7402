package android.support.design.widget;

import android.support.v4.view.ViewPager;
import java.lang.ref.WeakReference;

public class TabLayout$TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {
  private int mPreviousScrollState;
  
  private int mScrollState;
  
  private final WeakReference<TabLayout> mTabLayoutRef;
  
  public TabLayout$TabLayoutOnPageChangeListener(TabLayout paramTabLayout) {
    this.mTabLayoutRef = new WeakReference<TabLayout>(paramTabLayout);
  }
  
  public void onPageScrollStateChanged(int paramInt) {
    this.mPreviousScrollState = this.mScrollState;
    this.mScrollState = paramInt;
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {
    boolean bool = false;
    TabLayout tabLayout = this.mTabLayoutRef.get();
    if (tabLayout != null) {
      boolean bool1;
      if (this.mScrollState != 2 || this.mPreviousScrollState == 1) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (this.mScrollState != 2 || this.mPreviousScrollState != 0)
        bool = true; 
      tabLayout.setScrollPosition(paramInt1, paramFloat, bool1, bool);
    } 
  }
  
  public void onPageSelected(int paramInt) {
    TabLayout tabLayout = this.mTabLayoutRef.get();
    if (tabLayout != null && tabLayout.getSelectedTabPosition() != paramInt && paramInt < tabLayout.getTabCount()) {
      boolean bool;
      if (this.mScrollState == 0 || (this.mScrollState == 2 && this.mPreviousScrollState == 0)) {
        bool = true;
      } else {
        bool = false;
      } 
      tabLayout.selectTab(tabLayout.getTabAt(paramInt), bool);
    } 
  }
  
  void reset() {
    this.mScrollState = 0;
    this.mPreviousScrollState = 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TabLayout$TabLayoutOnPageChangeListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */