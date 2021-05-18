package android.support.v7.view.menu;

import android.view.MenuItem;

class MenuItemWrapperICS$OnMenuItemClickListenerWrapper extends BaseWrapper<MenuItem.OnMenuItemClickListener> implements MenuItem.OnMenuItemClickListener {
  MenuItemWrapperICS$OnMenuItemClickListenerWrapper(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener) {
    super(paramOnMenuItemClickListener);
  }
  
  public boolean onMenuItemClick(MenuItem paramMenuItem) {
    return this.mWrappedObject.onMenuItemClick(MenuItemWrapperICS.this.getMenuItemWrapper(paramMenuItem));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\MenuItemWrapperICS$OnMenuItemClickListenerWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */