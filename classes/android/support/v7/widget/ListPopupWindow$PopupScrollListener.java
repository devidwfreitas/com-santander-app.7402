package android.support.v7.widget;

import android.widget.AbsListView;

class ListPopupWindow$PopupScrollListener implements AbsListView.OnScrollListener {
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {
    if (paramInt == 1 && !ListPopupWindow.this.isInputMethodNotNeeded() && ListPopupWindow.this.mPopup.getContentView() != null) {
      ListPopupWindow.this.mHandler.removeCallbacks(ListPopupWindow.this.mResizePopupRunnable);
      ListPopupWindow.this.mResizePopupRunnable.run();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ListPopupWindow$PopupScrollListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */