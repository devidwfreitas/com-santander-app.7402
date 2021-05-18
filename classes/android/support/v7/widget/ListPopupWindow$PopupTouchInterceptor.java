package android.support.v7.widget;

import android.view.MotionEvent;
import android.view.View;

class ListPopupWindow$PopupTouchInterceptor implements View.OnTouchListener {
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    int i = paramMotionEvent.getAction();
    int j = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    if (i == 0 && ListPopupWindow.this.mPopup != null && ListPopupWindow.this.mPopup.isShowing() && j >= 0 && j < ListPopupWindow.this.mPopup.getWidth() && k >= 0 && k < ListPopupWindow.this.mPopup.getHeight()) {
      ListPopupWindow.this.mHandler.postDelayed(ListPopupWindow.this.mResizePopupRunnable, 250L);
      return false;
    } 
    if (i == 1)
      ListPopupWindow.this.mHandler.removeCallbacks(ListPopupWindow.this.mResizePopupRunnable); 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ListPopupWindow$PopupTouchInterceptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */