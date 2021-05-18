package android.support.v7.widget;

import android.support.v7.view.menu.MenuBuilder;
import android.view.MenuItem;

class PopupMenu$1 implements MenuBuilder.Callback {
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem) {
    return (PopupMenu.this.mMenuItemClickListener != null) ? PopupMenu.this.mMenuItemClickListener.onMenuItemClick(paramMenuItem) : false;
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\PopupMenu$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */