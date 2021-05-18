package android.support.v7.view.menu;

import android.support.v4.view.ActionProvider;

class MenuItemImpl$1 implements ActionProvider.VisibilityListener {
  public void onActionProviderVisibilityChanged(boolean paramBoolean) {
    MenuItemImpl.this.mMenu.onItemVisibleChanged(MenuItemImpl.this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\MenuItemImpl$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */