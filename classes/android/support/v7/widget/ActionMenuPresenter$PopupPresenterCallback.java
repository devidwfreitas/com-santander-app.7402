package android.support.v7.widget;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.SubMenuBuilder;

class ActionMenuPresenter$PopupPresenterCallback implements MenuPresenter.Callback {
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    if (paramMenuBuilder instanceof SubMenuBuilder)
      paramMenuBuilder.getRootMenu().close(false); 
    MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
    if (callback != null)
      callback.onCloseMenu(paramMenuBuilder, paramBoolean); 
  }
  
  public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder) {
    if (paramMenuBuilder == null)
      return false; 
    ActionMenuPresenter.this.mOpenSubMenuId = ((SubMenuBuilder)paramMenuBuilder).getItem().getItemId();
    MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
    return (callback != null) ? callback.onOpenSubMenu(paramMenuBuilder) : false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionMenuPresenter$PopupPresenterCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */