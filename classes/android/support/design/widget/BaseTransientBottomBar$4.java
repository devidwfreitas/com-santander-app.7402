package android.support.design.widget;

import android.view.View;

class BaseTransientBottomBar$4 implements SwipeDismissBehavior$OnDismissListener {
  public void onDismiss(View paramView) {
    paramView.setVisibility(8);
    BaseTransientBottomBar.this.dispatchDismiss(0);
  }
  
  public void onDragStateChanged(int paramInt) {
    switch (paramInt) {
      default:
        return;
      case 1:
      case 2:
        SnackbarManager.getInstance().pauseTimeout(BaseTransientBottomBar.this.mManagerCallback);
        return;
      case 0:
        break;
    } 
    SnackbarManager.getInstance().restoreTimeoutIfPaused(BaseTransientBottomBar.this.mManagerCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BaseTransientBottomBar$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */