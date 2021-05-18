package android.support.v7.app;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.view.Menu;

final class ToolbarActionBar$PanelMenuPresenterCallback implements MenuPresenter.Callback {
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    if (ToolbarActionBar.this.mWindowCallback != null)
      ToolbarActionBar.this.mWindowCallback.onPanelClosed(0, (Menu)paramMenuBuilder); 
  }
  
  public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder) {
    if (paramMenuBuilder == null && ToolbarActionBar.this.mWindowCallback != null)
      ToolbarActionBar.this.mWindowCallback.onMenuOpened(0, (Menu)paramMenuBuilder); 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ToolbarActionBar$PanelMenuPresenterCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */