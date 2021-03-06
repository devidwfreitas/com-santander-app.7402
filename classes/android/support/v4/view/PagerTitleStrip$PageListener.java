package android.support.v4.view;

import android.database.DataSetObserver;

class PagerTitleStrip$PageListener extends DataSetObserver implements ViewPager$OnAdapterChangeListener, ViewPager$OnPageChangeListener {
  private int mScrollState;
  
  public void onAdapterChanged(ViewPager paramViewPager, PagerAdapter paramPagerAdapter1, PagerAdapter paramPagerAdapter2) {
    PagerTitleStrip.this.updateAdapter(paramPagerAdapter1, paramPagerAdapter2);
  }
  
  public void onChanged() {
    float f = 0.0F;
    PagerTitleStrip.this.updateText(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
    if (PagerTitleStrip.this.mLastKnownPositionOffset >= 0.0F)
      f = PagerTitleStrip.this.mLastKnownPositionOffset; 
    PagerTitleStrip.this.updateTextPositions(PagerTitleStrip.this.mPager.getCurrentItem(), f, true);
  }
  
  public void onPageScrollStateChanged(int paramInt) {
    this.mScrollState = paramInt;
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {
    paramInt2 = paramInt1;
    if (paramFloat > 0.5F)
      paramInt2 = paramInt1 + 1; 
    PagerTitleStrip.this.updateTextPositions(paramInt2, paramFloat, false);
  }
  
  public void onPageSelected(int paramInt) {
    float f = 0.0F;
    if (this.mScrollState == 0) {
      PagerTitleStrip.this.updateText(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
      if (PagerTitleStrip.this.mLastKnownPositionOffset >= 0.0F)
        f = PagerTitleStrip.this.mLastKnownPositionOffset; 
      PagerTitleStrip.this.updateTextPositions(PagerTitleStrip.this.mPager.getCurrentItem(), f, true);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\PagerTitleStrip$PageListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */