import android.support.design.widget.TabLayout;

class lcb implements TabLayout.OnTabSelectedListener {
  lcb(lca paramlca) {}
  
  public void onTabReselected(TabLayout.Tab paramTab) {}
  
  public void onTabSelected(TabLayout.Tab paramTab) {
    lca.a(this.a).setCurrentItem(paramTab.getPosition());
    if (lca.b(this.a) != null && lca.b(this.a).size() > 0)
      lca.c(this.a).setTabTextColors(this.a.getResources().getColor(2131623937), this.a.getResources().getColor(2131623937)); 
  }
  
  public void onTabUnselected(TabLayout.Tab paramTab) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lcb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */