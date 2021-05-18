package android.support.v7.widget;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;

class AppCompatSpinner$DropdownPopup$3 implements PopupWindow.OnDismissListener {
  public void onDismiss() {
    ViewTreeObserver viewTreeObserver = this.this$1.this$0.getViewTreeObserver();
    if (viewTreeObserver != null)
      viewTreeObserver.removeGlobalOnLayoutListener(layoutListener); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatSpinner$DropdownPopup$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */