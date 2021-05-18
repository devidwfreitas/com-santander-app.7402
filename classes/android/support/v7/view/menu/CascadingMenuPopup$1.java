package android.support.v7.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Iterator;

class CascadingMenuPopup$1 implements ViewTreeObserver.OnGlobalLayoutListener {
  public void onGlobalLayout() {
    if (CascadingMenuPopup.this.isShowing() && CascadingMenuPopup.this.mShowingMenus.size() > 0 && !((CascadingMenuPopup$CascadingMenuInfo)CascadingMenuPopup.this.mShowingMenus.get(0)).window.isModal()) {
      View view = CascadingMenuPopup.this.mShownAnchorView;
      if (view == null || !view.isShown()) {
        CascadingMenuPopup.this.dismiss();
        return;
      } 
    } else {
      return;
    } 
    Iterator<CascadingMenuPopup$CascadingMenuInfo> iterator = CascadingMenuPopup.this.mShowingMenus.iterator();
    while (true) {
      if (iterator.hasNext()) {
        ((CascadingMenuPopup$CascadingMenuInfo)iterator.next()).window.show();
        continue;
      } 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\CascadingMenuPopup$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */