package android.support.v7.widget;

import android.support.v7.view.menu.ActionMenuItem;
import android.view.MenuItem;
import android.view.View;

class ToolbarWidgetWrapper$1 implements View.OnClickListener {
  final ActionMenuItem mNavItem = new ActionMenuItem(ToolbarWidgetWrapper.this.mToolbar.getContext(), 0, 16908332, 0, 0, ToolbarWidgetWrapper.this.mTitle);
  
  public void onClick(View paramView) {
    if (ToolbarWidgetWrapper.this.mWindowCallback != null && ToolbarWidgetWrapper.this.mMenuPrepared)
      ToolbarWidgetWrapper.this.mWindowCallback.onMenuItemSelected(0, (MenuItem)this.mNavItem); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ToolbarWidgetWrapper$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */