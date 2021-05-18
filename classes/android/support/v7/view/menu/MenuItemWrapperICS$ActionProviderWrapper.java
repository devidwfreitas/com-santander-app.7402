package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.view.ActionProvider;
import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

class MenuItemWrapperICS$ActionProviderWrapper extends ActionProvider {
  final ActionProvider mInner;
  
  public MenuItemWrapperICS$ActionProviderWrapper(Context paramContext, ActionProvider paramActionProvider) {
    super(paramContext);
    this.mInner = paramActionProvider;
  }
  
  public boolean hasSubMenu() {
    return this.mInner.hasSubMenu();
  }
  
  public View onCreateActionView() {
    return this.mInner.onCreateActionView();
  }
  
  public boolean onPerformDefaultAction() {
    return this.mInner.onPerformDefaultAction();
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu) {
    this.mInner.onPrepareSubMenu(MenuItemWrapperICS.this.getSubMenuWrapper(paramSubMenu));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\MenuItemWrapperICS$ActionProviderWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */