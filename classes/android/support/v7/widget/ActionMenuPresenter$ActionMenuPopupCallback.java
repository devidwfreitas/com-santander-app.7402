package android.support.v7.widget;

import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.ShowableListMenu;

class ActionMenuPresenter$ActionMenuPopupCallback extends ActionMenuItemView.PopupCallback {
  public ShowableListMenu getPopup() {
    return (ShowableListMenu)((ActionMenuPresenter.this.mActionButtonPopup != null) ? ActionMenuPresenter.this.mActionButtonPopup.getPopup() : null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionMenuPresenter$ActionMenuPopupCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */