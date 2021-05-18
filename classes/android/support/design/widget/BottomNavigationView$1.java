package android.support.design.widget;

import android.support.v7.view.menu.MenuBuilder;
import android.view.MenuItem;

class BottomNavigationView$1 implements MenuBuilder.Callback {
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem) {
    if (BottomNavigationView.access$000(BottomNavigationView.this) != null && paramMenuItem.getItemId() == BottomNavigationView.this.getSelectedItemId()) {
      BottomNavigationView.access$000(BottomNavigationView.this).onNavigationItemReselected(paramMenuItem);
      return true;
    } 
    return !(BottomNavigationView.access$100(BottomNavigationView.this) == null || BottomNavigationView.access$100(BottomNavigationView.this).onNavigationItemSelected(paramMenuItem));
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BottomNavigationView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */