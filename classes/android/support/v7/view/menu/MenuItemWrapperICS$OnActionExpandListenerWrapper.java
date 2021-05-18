package android.support.v7.view.menu;

import android.support.v4.view.MenuItemCompat;
import android.view.MenuItem;

class MenuItemWrapperICS$OnActionExpandListenerWrapper extends BaseWrapper<MenuItem.OnActionExpandListener> implements MenuItemCompat.OnActionExpandListener {
  MenuItemWrapperICS$OnActionExpandListenerWrapper(MenuItem.OnActionExpandListener paramOnActionExpandListener) {
    super(paramOnActionExpandListener);
  }
  
  public boolean onMenuItemActionCollapse(MenuItem paramMenuItem) {
    return this.mWrappedObject.onMenuItemActionCollapse(MenuItemWrapperICS.this.getMenuItemWrapper(paramMenuItem));
  }
  
  public boolean onMenuItemActionExpand(MenuItem paramMenuItem) {
    return this.mWrappedObject.onMenuItemActionExpand(MenuItemWrapperICS.this.getMenuItemWrapper(paramMenuItem));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\MenuItemWrapperICS$OnActionExpandListenerWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */