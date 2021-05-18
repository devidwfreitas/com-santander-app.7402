package android.support.v7.widget;

import android.view.View;
import android.view.ViewTreeObserver;

class AppCompatSpinner$DropdownPopup$2 implements ViewTreeObserver.OnGlobalLayoutListener {
  public void onGlobalLayout() {
    if (!AppCompatSpinner$DropdownPopup.this.isVisibleToUser((View)this.this$1.this$0)) {
      AppCompatSpinner$DropdownPopup.this.dismiss();
      return;
    } 
    AppCompatSpinner$DropdownPopup.this.computeContentWidth();
    AppCompatSpinner$DropdownPopup.access$001(AppCompatSpinner$DropdownPopup.this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatSpinner$DropdownPopup$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */