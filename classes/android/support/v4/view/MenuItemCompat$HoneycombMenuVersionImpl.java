package android.support.v4.view;

import android.view.MenuItem;
import android.view.View;

class MenuItemCompat$HoneycombMenuVersionImpl implements MenuItemCompat$MenuVersionImpl {
  public boolean collapseActionView(MenuItem paramMenuItem) {
    return false;
  }
  
  public boolean expandActionView(MenuItem paramMenuItem) {
    return false;
  }
  
  public View getActionView(MenuItem paramMenuItem) {
    return MenuItemCompatHoneycomb.getActionView(paramMenuItem);
  }
  
  public boolean isActionViewExpanded(MenuItem paramMenuItem) {
    return false;
  }
  
  public MenuItem setActionView(MenuItem paramMenuItem, int paramInt) {
    return MenuItemCompatHoneycomb.setActionView(paramMenuItem, paramInt);
  }
  
  public MenuItem setActionView(MenuItem paramMenuItem, View paramView) {
    return MenuItemCompatHoneycomb.setActionView(paramMenuItem, paramView);
  }
  
  public MenuItem setOnActionExpandListener(MenuItem paramMenuItem, MenuItemCompat$OnActionExpandListener paramMenuItemCompat$OnActionExpandListener) {
    return paramMenuItem;
  }
  
  public void setShowAsAction(MenuItem paramMenuItem, int paramInt) {
    MenuItemCompatHoneycomb.setShowAsAction(paramMenuItem, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\MenuItemCompat$HoneycombMenuVersionImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */