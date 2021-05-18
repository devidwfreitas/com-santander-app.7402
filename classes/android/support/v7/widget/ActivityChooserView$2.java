package android.support.v7.widget;

import android.view.ViewTreeObserver;

class ActivityChooserView$2 implements ViewTreeObserver.OnGlobalLayoutListener {
  public void onGlobalLayout() {
    if (ActivityChooserView.this.isShowingPopup()) {
      if (!ActivityChooserView.this.isShown()) {
        ActivityChooserView.this.getListPopupWindow().dismiss();
        return;
      } 
    } else {
      return;
    } 
    ActivityChooserView.this.getListPopupWindow().show();
    if (ActivityChooserView.this.mProvider != null) {
      ActivityChooserView.this.mProvider.subUiVisibilityChanged(true);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActivityChooserView$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */