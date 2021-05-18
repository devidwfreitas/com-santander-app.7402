package android.support.v7.app;

import android.support.v7.view.WindowCallbackWrapper;
import android.view.Menu;
import android.view.View;
import android.view.Window;

class ToolbarActionBar$ToolbarCallbackWrapper extends WindowCallbackWrapper {
  public ToolbarActionBar$ToolbarCallbackWrapper(Window.Callback paramCallback) {
    super(paramCallback);
  }
  
  public View onCreatePanelView(int paramInt) {
    switch (paramInt) {
      default:
        return super.onCreatePanelView(paramInt);
      case 0:
        break;
    } 
    Menu menu = ToolbarActionBar.this.mDecorToolbar.getMenu();
    if (onPreparePanel(paramInt, null, menu) && onMenuOpened(paramInt, menu))
      return ToolbarActionBar.this.getListMenuView(menu); 
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu) {
    boolean bool = super.onPreparePanel(paramInt, paramView, paramMenu);
    if (bool && !ToolbarActionBar.this.mToolbarMenuPrepared) {
      ToolbarActionBar.this.mDecorToolbar.setMenuPrepared();
      ToolbarActionBar.this.mToolbarMenuPrepared = true;
    } 
    return bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ToolbarActionBar$ToolbarCallbackWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */