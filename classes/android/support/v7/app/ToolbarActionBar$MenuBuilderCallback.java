package android.support.v7.app;

import android.support.v7.view.menu.MenuBuilder;
import android.view.Menu;
import android.view.MenuItem;

final class ToolbarActionBar$MenuBuilderCallback implements MenuBuilder.Callback {
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem) {
    return false;
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder) {
    if (ToolbarActionBar.this.mWindowCallback != null) {
      if (ToolbarActionBar.this.mDecorToolbar.isOverflowMenuShowing()) {
        ToolbarActionBar.this.mWindowCallback.onPanelClosed(108, (Menu)paramMenuBuilder);
        return;
      } 
    } else {
      return;
    } 
    if (ToolbarActionBar.this.mWindowCallback.onPreparePanel(0, null, (Menu)paramMenuBuilder)) {
      ToolbarActionBar.this.mWindowCallback.onMenuOpened(108, (Menu)paramMenuBuilder);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ToolbarActionBar$MenuBuilderCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */