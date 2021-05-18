package android.support.v7.widget;

import android.support.v7.view.menu.ShowableListMenu;
import android.view.View;

class ActivityChooserView$3 extends ForwardingListener {
  ActivityChooserView$3(View paramView) {
    super(paramView);
  }
  
  public ShowableListMenu getPopup() {
    return ActivityChooserView.this.getListPopupWindow();
  }
  
  protected boolean onForwardingStarted() {
    ActivityChooserView.this.showPopup();
    return true;
  }
  
  protected boolean onForwardingStopped() {
    ActivityChooserView.this.dismissPopup();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActivityChooserView$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */