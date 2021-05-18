package android.support.design.widget;

import android.view.MotionEvent;
import android.view.View;

final class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<BaseTransientBottomBar$SnackbarBaseLayout> {
  public boolean canSwipeDismissView(View paramView) {
    return paramView instanceof BaseTransientBottomBar$SnackbarBaseLayout;
  }
  
  public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, BaseTransientBottomBar$SnackbarBaseLayout paramBaseTransientBottomBar$SnackbarBaseLayout, MotionEvent paramMotionEvent) {
    switch (paramMotionEvent.getActionMasked()) {
      default:
        return super.onInterceptTouchEvent(paramCoordinatorLayout, paramBaseTransientBottomBar$SnackbarBaseLayout, paramMotionEvent);
      case 0:
        if (paramCoordinatorLayout.isPointInChildBounds((View)paramBaseTransientBottomBar$SnackbarBaseLayout, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
          SnackbarManager.getInstance().pauseTimeout(BaseTransientBottomBar.this.mManagerCallback); 
      case 1:
      case 3:
        break;
    } 
    SnackbarManager.getInstance().restoreTimeoutIfPaused(BaseTransientBottomBar.this.mManagerCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BaseTransientBottomBar$Behavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */