package android.support.v7.widget;

import android.view.View;

class ListPopupWindow$2 implements Runnable {
  public void run() {
    View view = ListPopupWindow.this.getAnchorView();
    if (view != null && view.getWindowToken() != null)
      ListPopupWindow.this.show(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ListPopupWindow$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */