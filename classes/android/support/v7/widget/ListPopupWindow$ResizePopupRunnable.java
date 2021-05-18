package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

class ListPopupWindow$ResizePopupRunnable implements Runnable {
  public void run() {
    if (ListPopupWindow.this.mDropDownList != null && ViewCompat.isAttachedToWindow((View)ListPopupWindow.this.mDropDownList) && ListPopupWindow.this.mDropDownList.getCount() > ListPopupWindow.this.mDropDownList.getChildCount() && ListPopupWindow.this.mDropDownList.getChildCount() <= ListPopupWindow.this.mListItemExpandMaximum) {
      ListPopupWindow.this.mPopup.setInputMethodMode(2);
      ListPopupWindow.this.show();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ListPopupWindow$ResizePopupRunnable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */