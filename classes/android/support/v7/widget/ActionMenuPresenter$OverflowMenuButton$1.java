package android.support.v7.widget;

import android.support.v7.view.menu.ShowableListMenu;
import android.view.View;

class ActionMenuPresenter$OverflowMenuButton$1 extends ForwardingListener {
  ActionMenuPresenter$OverflowMenuButton$1(View paramView) {
    super(paramView);
  }
  
  public ShowableListMenu getPopup() {
    return (ShowableListMenu)((this.this$1.this$0.mOverflowPopup == null) ? null : this.this$1.this$0.mOverflowPopup.getPopup());
  }
  
  public boolean onForwardingStarted() {
    this.this$1.this$0.showOverflowMenu();
    return true;
  }
  
  public boolean onForwardingStopped() {
    if (this.this$1.this$0.mPostedOpenRunnable != null)
      return false; 
    this.this$1.this$0.hideOverflowMenu();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionMenuPresenter$OverflowMenuButton$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */