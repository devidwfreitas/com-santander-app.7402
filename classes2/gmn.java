import android.support.v4.view.ViewPager;

class gmn extends ViewPager.SimpleOnPageChangeListener {
  gmn(gmm paramgmm) {}
  
  public void onPageSelected(int paramInt) {
    super.onPageSelected(paramInt);
    gmm.a(this.a).setSelected(paramInt);
    gmm.a(this.a, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gmn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */