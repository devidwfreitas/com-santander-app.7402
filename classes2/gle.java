import android.support.v4.view.ViewPager;

class gle extends ViewPager.SimpleOnPageChangeListener {
  gle(gld paramgld) {}
  
  public void onPageSelected(int paramInt) {
    super.onPageSelected(paramInt);
    gld.a(this.a).setSelected(paramInt);
    gld.a(this.a, paramInt);
    frq.d("Cartoes_Home_Acao", "SelecionarCartoes");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */