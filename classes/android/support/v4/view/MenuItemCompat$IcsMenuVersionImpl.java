package android.support.v4.view;

import android.view.MenuItem;

class MenuItemCompat$IcsMenuVersionImpl extends MenuItemCompat$HoneycombMenuVersionImpl {
  public boolean collapseActionView(MenuItem paramMenuItem) {
    return MenuItemCompatIcs.collapseActionView(paramMenuItem);
  }
  
  public boolean expandActionView(MenuItem paramMenuItem) {
    return MenuItemCompatIcs.expandActionView(paramMenuItem);
  }
  
  public boolean isActionViewExpanded(MenuItem paramMenuItem) {
    return MenuItemCompatIcs.isActionViewExpanded(paramMenuItem);
  }
  
  public MenuItem setOnActionExpandListener(MenuItem paramMenuItem, MenuItemCompat$OnActionExpandListener paramMenuItemCompat$OnActionExpandListener) {
    return (paramMenuItemCompat$OnActionExpandListener == null) ? MenuItemCompatIcs.setOnActionExpandListener(paramMenuItem, null) : MenuItemCompatIcs.setOnActionExpandListener(paramMenuItem, new MenuItemCompat$IcsMenuVersionImpl$1(this, paramMenuItemCompat$OnActionExpandListener));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\MenuItemCompat$IcsMenuVersionImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */