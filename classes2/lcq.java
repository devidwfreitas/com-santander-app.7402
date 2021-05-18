import android.support.v4.view.ViewPager;

class lcq implements ViewPager.OnPageChangeListener {
  lcq(lcn paramlcn) {}
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    lcn.a(this.a, paramInt);
    lcn.b(this.a, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lcq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */