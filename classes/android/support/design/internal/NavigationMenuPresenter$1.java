package android.support.design.internal;

import android.support.v7.view.menu.MenuItemImpl;
import android.view.MenuItem;
import android.view.View;

class NavigationMenuPresenter$1 implements View.OnClickListener {
  public void onClick(View paramView) {
    NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView)paramView;
    NavigationMenuPresenter.this.setUpdateSuspended(true);
    MenuItemImpl menuItemImpl = navigationMenuItemView.getItemData();
    boolean bool = NavigationMenuPresenter.this.mMenu.performItemAction((MenuItem)menuItemImpl, NavigationMenuPresenter.this, 0);
    if (menuItemImpl != null && menuItemImpl.isCheckable() && bool)
      NavigationMenuPresenter.this.mAdapter.setCheckedItem(menuItemImpl); 
    NavigationMenuPresenter.this.setUpdateSuspended(false);
    NavigationMenuPresenter.this.updateMenuView(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\NavigationMenuPresenter$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */