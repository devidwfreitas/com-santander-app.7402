package android.support.v7.app;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.view.Menu;
import android.view.Window;

final class AppCompatDelegateImplV9$PanelMenuPresenterCallback implements MenuPresenter.Callback {
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    boolean bool;
    MenuBuilder menuBuilder = paramMenuBuilder.getRootMenu();
    if (menuBuilder != paramMenuBuilder) {
      bool = true;
    } else {
      bool = false;
    } 
    AppCompatDelegateImplV9 appCompatDelegateImplV9 = AppCompatDelegateImplV9.this;
    if (bool)
      paramMenuBuilder = menuBuilder; 
    AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = appCompatDelegateImplV9.findMenuPanel((Menu)paramMenuBuilder);
    if (appCompatDelegateImplV9$PanelFeatureState != null) {
      if (bool) {
        AppCompatDelegateImplV9.this.callOnPanelClosed(appCompatDelegateImplV9$PanelFeatureState.featureId, appCompatDelegateImplV9$PanelFeatureState, (Menu)menuBuilder);
        AppCompatDelegateImplV9.this.closePanel(appCompatDelegateImplV9$PanelFeatureState, true);
        return;
      } 
    } else {
      return;
    } 
    AppCompatDelegateImplV9.this.closePanel(appCompatDelegateImplV9$PanelFeatureState, paramBoolean);
  }
  
  public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder) {
    if (paramMenuBuilder == null && AppCompatDelegateImplV9.this.mHasActionBar) {
      Window.Callback callback = AppCompatDelegateImplV9.this.getWindowCallback();
      if (callback != null && !AppCompatDelegateImplV9.this.isDestroyed())
        callback.onMenuOpened(108, (Menu)paramMenuBuilder); 
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$PanelMenuPresenterCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */