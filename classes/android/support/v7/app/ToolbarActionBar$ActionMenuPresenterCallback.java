package android.support.v7.app;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.view.Menu;

final class ToolbarActionBar$ActionMenuPresenterCallback implements MenuPresenter.Callback {
  private boolean mClosingActionMenu;
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    if (this.mClosingActionMenu)
      return; 
    this.mClosingActionMenu = true;
    ToolbarActionBar.this.mDecorToolbar.dismissPopupMenus();
    if (ToolbarActionBar.this.mWindowCallback != null)
      ToolbarActionBar.this.mWindowCallback.onPanelClosed(108, (Menu)paramMenuBuilder); 
    this.mClosingActionMenu = false;
  }
  
  public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder) {
    if (ToolbarActionBar.this.mWindowCallback != null) {
      ToolbarActionBar.this.mWindowCallback.onMenuOpened(108, (Menu)paramMenuBuilder);
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ToolbarActionBar$ActionMenuPresenterCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */