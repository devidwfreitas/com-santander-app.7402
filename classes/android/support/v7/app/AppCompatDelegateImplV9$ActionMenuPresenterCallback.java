package android.support.v7.app;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.view.Menu;
import android.view.Window;

final class AppCompatDelegateImplV9$ActionMenuPresenterCallback implements MenuPresenter.Callback {
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    AppCompatDelegateImplV9.this.checkCloseActionMenu(paramMenuBuilder);
  }
  
  public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder) {
    Window.Callback callback = AppCompatDelegateImplV9.this.getWindowCallback();
    if (callback != null)
      callback.onMenuOpened(108, (Menu)paramMenuBuilder); 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$ActionMenuPresenterCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */