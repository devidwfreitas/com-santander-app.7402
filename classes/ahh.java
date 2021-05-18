import android.support.design.widget.TabLayout;

final class ahh implements TabLayout.OnTabSelectedListener {
  ahh(ahe paramahe) {}
  
  public final void onTabReselected(TabLayout.Tab paramTab) {}
  
  public final void onTabSelected(TabLayout.Tab paramTab) {
    ahe.a(this.a).setCurrentItem(paramTab.getPosition());
    if (paramTab.getPosition() == 0) {
      aiy.a(ahe.b(this.a).getString(agl.tag_acao), ahe.b(this.a).getString(agl.tag_valor_total));
      return;
    } 
    if (paramTab.getPosition() == 1) {
      aiy.a(ahe.b(this.a).getString(agl.tag_acao), ahe.b(this.a).getString(agl.tag_valor_mes));
      return;
    } 
  }
  
  public final void onTabUnselected(TabLayout.Tab paramTab) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ahh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */