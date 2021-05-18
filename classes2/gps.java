import android.support.v4.view.ViewPager;
import android.view.View;

final class gps implements View.OnClickListener {
  gps(ViewPager paramViewPager) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_PagamentoDaFatura_OpcoesPagamento_Acao", "");
    if (this.a.getCurrentItem() > 0)
      this.a.setCurrentItem(this.a.getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gps.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */