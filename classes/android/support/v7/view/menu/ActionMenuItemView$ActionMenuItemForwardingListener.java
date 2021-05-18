package android.support.v7.view.menu;

import android.support.v7.widget.ForwardingListener;
import android.view.View;

class ActionMenuItemView$ActionMenuItemForwardingListener extends ForwardingListener {
  public ActionMenuItemView$ActionMenuItemForwardingListener() {
    super((View)paramActionMenuItemView);
  }
  
  public ShowableListMenu getPopup() {
    return (ActionMenuItemView.this.mPopupCallback != null) ? ActionMenuItemView.this.mPopupCallback.getPopup() : null;
  }
  
  protected boolean onForwardingStarted() {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (ActionMenuItemView.this.mItemInvoker != null) {
      bool1 = bool2;
      if (ActionMenuItemView.this.mItemInvoker.invokeItem(ActionMenuItemView.this.mItemData)) {
        ShowableListMenu showableListMenu = getPopup();
        bool1 = bool2;
        if (showableListMenu != null) {
          bool1 = bool2;
          if (showableListMenu.isShowing())
            bool1 = true; 
        } 
      } 
    } 
    return bool1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\ActionMenuItemView$ActionMenuItemForwardingListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */