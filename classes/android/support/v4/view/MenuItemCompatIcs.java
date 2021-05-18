package android.support.v4.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.MenuItem;

@TargetApi(14)
@RequiresApi(14)
class MenuItemCompatIcs {
  public static boolean collapseActionView(MenuItem paramMenuItem) {
    return paramMenuItem.collapseActionView();
  }
  
  public static boolean expandActionView(MenuItem paramMenuItem) {
    return paramMenuItem.expandActionView();
  }
  
  public static boolean isActionViewExpanded(MenuItem paramMenuItem) {
    return paramMenuItem.isActionViewExpanded();
  }
  
  public static MenuItem setOnActionExpandListener(MenuItem paramMenuItem, MenuItemCompatIcs$SupportActionExpandProxy paramMenuItemCompatIcs$SupportActionExpandProxy) {
    return paramMenuItem.setOnActionExpandListener(new MenuItemCompatIcs$OnActionExpandListenerWrapper(paramMenuItemCompatIcs$SupportActionExpandProxy));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\MenuItemCompatIcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */