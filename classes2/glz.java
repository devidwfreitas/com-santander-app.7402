import android.support.v4.view.ViewPager;

class glz extends ViewPager.SimpleOnPageChangeListener {
  glz(gly paramgly) {}
  
  public void onPageSelected(int paramInt) {
    super.onPageSelected(paramInt);
    gly.a(this.a).setSelected(paramInt);
    gly.a(this.a, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\glz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */