package android.support.v7.widget;

import android.support.v7.view.menu.ShowableListMenu;
import android.view.View;

class PopupMenu$3 extends ForwardingListener {
  PopupMenu$3(View paramView) {
    super(paramView);
  }
  
  public ShowableListMenu getPopup() {
    return (ShowableListMenu)PopupMenu.this.mPopup.getPopup();
  }
  
  protected boolean onForwardingStarted() {
    PopupMenu.this.show();
    return true;
  }
  
  protected boolean onForwardingStopped() {
    PopupMenu.this.dismiss();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\PopupMenu$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */