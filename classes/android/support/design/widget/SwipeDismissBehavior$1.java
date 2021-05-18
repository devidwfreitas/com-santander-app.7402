package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.view.View;
import android.view.ViewParent;

class SwipeDismissBehavior$1 extends ViewDragHelper.Callback {
  private static final int INVALID_POINTER_ID = -1;
  
  private int mActivePointerId = -1;
  
  private int mOriginalCapturedViewLeft;
  
  private boolean shouldDismiss(View paramView, float paramFloat) {
    if (paramFloat != 0.0F) {
      boolean bool;
      if (ViewCompat.getLayoutDirection(paramView) == 1) {
        bool = true;
      } else {
        bool = false;
      } 
      return (SwipeDismissBehavior.this.mSwipeDirection != 2) ? ((SwipeDismissBehavior.this.mSwipeDirection == 0) ? (bool ? (!(paramFloat >= 0.0F)) : (!(paramFloat <= 0.0F))) : ((SwipeDismissBehavior.this.mSwipeDirection == 1) ? (bool ? (!(paramFloat <= 0.0F)) : (!(paramFloat >= 0.0F))) : false)) : true;
    } 
    int i = paramView.getLeft();
    int j = this.mOriginalCapturedViewLeft;
    int k = Math.round(paramView.getWidth() * SwipeDismissBehavior.this.mDragDismissThreshold);
    return !(Math.abs(i - j) < k);
  }
  
  public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2) {
    if (ViewCompat.getLayoutDirection(paramView) == 1) {
      paramInt2 = 1;
    } else {
      paramInt2 = 0;
    } 
    if (SwipeDismissBehavior.this.mSwipeDirection == 0) {
      if (paramInt2 != 0) {
        int k = this.mOriginalCapturedViewLeft - paramView.getWidth();
        paramInt2 = this.mOriginalCapturedViewLeft;
        return SwipeDismissBehavior.clamp(k, paramInt1, paramInt2);
      } 
      int j = this.mOriginalCapturedViewLeft;
      paramInt2 = this.mOriginalCapturedViewLeft + paramView.getWidth();
      return SwipeDismissBehavior.clamp(j, paramInt1, paramInt2);
    } 
    if (SwipeDismissBehavior.this.mSwipeDirection == 1) {
      if (paramInt2 != 0) {
        int k = this.mOriginalCapturedViewLeft;
        paramInt2 = this.mOriginalCapturedViewLeft + paramView.getWidth();
        return SwipeDismissBehavior.clamp(k, paramInt1, paramInt2);
      } 
      int j = this.mOriginalCapturedViewLeft - paramView.getWidth();
      paramInt2 = this.mOriginalCapturedViewLeft;
      return SwipeDismissBehavior.clamp(j, paramInt1, paramInt2);
    } 
    int i = this.mOriginalCapturedViewLeft - paramView.getWidth();
    paramInt2 = this.mOriginalCapturedViewLeft + paramView.getWidth();
    return SwipeDismissBehavior.clamp(i, paramInt1, paramInt2);
  }
  
  public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2) {
    return paramView.getTop();
  }
  
  public int getViewHorizontalDragRange(View paramView) {
    return paramView.getWidth();
  }
  
  public void onViewCaptured(View paramView, int paramInt) {
    this.mActivePointerId = paramInt;
    this.mOriginalCapturedViewLeft = paramView.getLeft();
    ViewParent viewParent = paramView.getParent();
    if (viewParent != null)
      viewParent.requestDisallowInterceptTouchEvent(true); 
  }
  
  public void onViewDragStateChanged(int paramInt) {
    if (SwipeDismissBehavior.this.mListener != null)
      SwipeDismissBehavior.this.mListener.onDragStateChanged(paramInt); 
  }
  
  public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    float f1 = this.mOriginalCapturedViewLeft + paramView.getWidth() * SwipeDismissBehavior.this.mAlphaStartSwipeDistance;
    float f2 = this.mOriginalCapturedViewLeft + paramView.getWidth() * SwipeDismissBehavior.this.mAlphaEndSwipeDistance;
    if (paramInt1 <= f1) {
      ViewCompat.setAlpha(paramView, 1.0F);
      return;
    } 
    if (paramInt1 >= f2) {
      ViewCompat.setAlpha(paramView, 0.0F);
      return;
    } 
    ViewCompat.setAlpha(paramView, SwipeDismissBehavior.clamp(0.0F, 1.0F - SwipeDismissBehavior.fraction(f1, f2, paramInt1), 1.0F));
  }
  
  public void onViewReleased(View paramView, float paramFloat1, float paramFloat2) {
    this.mActivePointerId = -1;
    int i = paramView.getWidth();
    boolean bool = false;
    if (shouldDismiss(paramView, paramFloat1)) {
      if (paramView.getLeft() < this.mOriginalCapturedViewLeft) {
        i = this.mOriginalCapturedViewLeft - i;
      } else {
        i = this.mOriginalCapturedViewLeft + i;
      } 
      bool = true;
    } else {
      i = this.mOriginalCapturedViewLeft;
    } 
    if (SwipeDismissBehavior.this.mViewDragHelper.settleCapturedViewAt(i, paramView.getTop())) {
      ViewCompat.postOnAnimation(paramView, new SwipeDismissBehavior$SettleRunnable(SwipeDismissBehavior.this, paramView, bool));
      return;
    } 
    if (bool && SwipeDismissBehavior.this.mListener != null) {
      SwipeDismissBehavior.this.mListener.onDismiss(paramView);
      return;
    } 
  }
  
  public boolean tryCaptureView(View paramView, int paramInt) {
    return (this.mActivePointerId == -1 && SwipeDismissBehavior.this.canSwipeDismissView(paramView));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\SwipeDismissBehavior$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */