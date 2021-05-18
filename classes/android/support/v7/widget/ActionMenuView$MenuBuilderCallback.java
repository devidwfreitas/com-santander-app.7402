package android.support.v7.widget;

import android.support.v7.view.menu.MenuBuilder;
import android.view.MenuItem;

class ActionMenuView$MenuBuilderCallback implements MenuBuilder.Callback {
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem) {
    return (ActionMenuView.this.mOnMenuItemClickListener != null && ActionMenuView.this.mOnMenuItemClickListener.onMenuItemClick(paramMenuItem));
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder) {
    if (ActionMenuView.this.mMenuBuilderCallback != null)
      ActionMenuView.this.mMenuBuilderCallback.onMenuModeChange(paramMenuBuilder); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionMenuView$MenuBuilderCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */