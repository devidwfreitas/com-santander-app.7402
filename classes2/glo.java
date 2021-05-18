import android.support.v4.view.ViewPager;

class glo extends ViewPager.SimpleOnPageChangeListener {
  glo(gln paramgln) {}
  
  public void onPageSelected(int paramInt) {
    super.onPageSelected(paramInt);
    gln.a(this.a).setSelected(paramInt);
    gln.a(this.a, paramInt);
    frq.d("ContaCorrente_Acao", "GirarCarrosselSaldo");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\glo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */