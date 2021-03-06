package android.support.v4.view;

import android.os.Build;
import android.support.v4.internal.view.SupportMenuItem;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

public final class MenuItemCompat {
  static final MenuItemCompat$MenuVersionImpl IMPL = new MenuItemCompat$BaseMenuVersionImpl();
  
  public static final int SHOW_AS_ACTION_ALWAYS = 2;
  
  public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
  
  public static final int SHOW_AS_ACTION_IF_ROOM = 1;
  
  public static final int SHOW_AS_ACTION_NEVER = 0;
  
  public static final int SHOW_AS_ACTION_WITH_TEXT = 4;
  
  private static final String TAG = "MenuItemCompat";
  
  public static boolean collapseActionView(MenuItem paramMenuItem) {
    return (paramMenuItem instanceof SupportMenuItem) ? ((SupportMenuItem)paramMenuItem).collapseActionView() : IMPL.collapseActionView(paramMenuItem);
  }
  
  public static boolean expandActionView(MenuItem paramMenuItem) {
    return (paramMenuItem instanceof SupportMenuItem) ? ((SupportMenuItem)paramMenuItem).expandActionView() : IMPL.expandActionView(paramMenuItem);
  }
  
  public static ActionProvider getActionProvider(MenuItem paramMenuItem) {
    if (paramMenuItem instanceof SupportMenuItem)
      return ((SupportMenuItem)paramMenuItem).getSupportActionProvider(); 
    Log.w("MenuItemCompat", "getActionProvider: item does not implement SupportMenuItem; returning null");
    return null;
  }
  
  public static View getActionView(MenuItem paramMenuItem) {
    return (paramMenuItem instanceof SupportMenuItem) ? ((SupportMenuItem)paramMenuItem).getActionView() : IMPL.getActionView(paramMenuItem);
  }
  
  public static boolean isActionViewExpanded(MenuItem paramMenuItem) {
    return (paramMenuItem instanceof SupportMenuItem) ? ((SupportMenuItem)paramMenuItem).isActionViewExpanded() : IMPL.isActionViewExpanded(paramMenuItem);
  }
  
  public static MenuItem setActionProvider(MenuItem paramMenuItem, ActionProvider paramActionProvider) {
    if (paramMenuItem instanceof SupportMenuItem)
      return (MenuItem)((SupportMenuItem)paramMenuItem).setSupportActionProvider(paramActionProvider); 
    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
    return paramMenuItem;
  }
  
  public static MenuItem setActionView(MenuItem paramMenuItem, int paramInt) {
    return (paramMenuItem instanceof SupportMenuItem) ? ((SupportMenuItem)paramMenuItem).setActionView(paramInt) : IMPL.setActionView(paramMenuItem, paramInt);
  }
  
  public static MenuItem setActionView(MenuItem paramMenuItem, View paramView) {
    return (paramMenuItem instanceof SupportMenuItem) ? ((SupportMenuItem)paramMenuItem).setActionView(paramView) : IMPL.setActionView(paramMenuItem, paramView);
  }
  
  public static MenuItem setOnActionExpandListener(MenuItem paramMenuItem, MenuItemCompat$OnActionExpandListener paramMenuItemCompat$OnActionExpandListener) {
    return (MenuItem)((paramMenuItem instanceof SupportMenuItem) ? ((SupportMenuItem)paramMenuItem).setSupportOnActionExpandListener(paramMenuItemCompat$OnActionExpandListener) : IMPL.setOnActionExpandListener(paramMenuItem, paramMenuItemCompat$OnActionExpandListener));
  }
  
  public static void setShowAsAction(MenuItem paramMenuItem, int paramInt) {
    if (paramMenuItem instanceof SupportMenuItem) {
      ((SupportMenuItem)paramMenuItem).setShowAsAction(paramInt);
      return;
    } 
    IMPL.setShowAsAction(paramMenuItem, paramInt);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new MenuItemCompat$IcsMenuVersionImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 11) {
      IMPL = new MenuItemCompat$HoneycombMenuVersionImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\MenuItemCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */