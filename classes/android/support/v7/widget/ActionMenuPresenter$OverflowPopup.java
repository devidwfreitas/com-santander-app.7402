package android.support.v7.widget;

import android.content.Context;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPopupHelper;
import android.view.View;

class ActionMenuPresenter$OverflowPopup extends MenuPopupHelper {
  public ActionMenuPresenter$OverflowPopup(Context paramContext, MenuBuilder paramMenuBuilder, View paramView, boolean paramBoolean) {
    super(paramContext, paramMenuBuilder, paramView, paramBoolean, R.attr.actionOverflowMenuStyle);
    setGravity(8388613);
    setPresenterCallback(paramActionMenuPresenter.mPopupPresenterCallback);
  }
  
  protected void onDismiss() {
    if (ActionMenuPresenter.access$000(ActionMenuPresenter.this) != null)
      ActionMenuPresenter.access$100(ActionMenuPresenter.this).close(); 
    ActionMenuPresenter.this.mOverflowPopup = null;
    super.onDismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionMenuPresenter$OverflowPopup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */