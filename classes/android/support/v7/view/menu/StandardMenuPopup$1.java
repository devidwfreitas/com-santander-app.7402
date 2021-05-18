package android.support.v7.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;

class StandardMenuPopup$1 implements ViewTreeObserver.OnGlobalLayoutListener {
  public void onGlobalLayout() {
    if (StandardMenuPopup.this.isShowing() && !StandardMenuPopup.this.mPopup.isModal()) {
      View view = StandardMenuPopup.this.mShownAnchorView;
      if (view == null || !view.isShown()) {
        StandardMenuPopup.this.dismiss();
        return;
      } 
    } else {
      return;
    } 
    StandardMenuPopup.this.mPopup.show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\StandardMenuPopup$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */