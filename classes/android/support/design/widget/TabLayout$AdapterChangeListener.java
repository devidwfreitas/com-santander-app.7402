package android.support.design.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;

class TabLayout$AdapterChangeListener implements ViewPager.OnAdapterChangeListener {
  private boolean mAutoRefresh;
  
  public void onAdapterChanged(@NonNull ViewPager paramViewPager, @Nullable PagerAdapter paramPagerAdapter1, @Nullable PagerAdapter paramPagerAdapter2) {
    if (TabLayout.this.mViewPager == paramViewPager)
      TabLayout.this.setPagerAdapter(paramPagerAdapter2, this.mAutoRefresh); 
  }
  
  void setAutoRefresh(boolean paramBoolean) {
    this.mAutoRefresh = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TabLayout$AdapterChangeListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */