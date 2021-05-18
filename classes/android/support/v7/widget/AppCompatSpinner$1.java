package android.support.v7.widget;

import android.support.v7.view.menu.ShowableListMenu;
import android.view.View;

class AppCompatSpinner$1 extends ForwardingListener {
  AppCompatSpinner$1(View paramView) {
    super(paramView);
  }
  
  public ShowableListMenu getPopup() {
    return popup;
  }
  
  public boolean onForwardingStarted() {
    if (!AppCompatSpinner.this.mPopup.isShowing())
      AppCompatSpinner.this.mPopup.show(); 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatSpinner$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */