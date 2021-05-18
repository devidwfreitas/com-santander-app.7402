package android.support.v7.widget;

import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;

public class ScrollingTabContainerView$VisibilityAnimListener implements ViewPropertyAnimatorListener {
  private boolean mCanceled = false;
  
  private int mFinalVisibility;
  
  public void onAnimationCancel(View paramView) {
    this.mCanceled = true;
  }
  
  public void onAnimationEnd(View paramView) {
    if (this.mCanceled)
      return; 
    ScrollingTabContainerView.this.mVisibilityAnim = null;
    ScrollingTabContainerView.this.setVisibility(this.mFinalVisibility);
  }
  
  public void onAnimationStart(View paramView) {
    ScrollingTabContainerView.this.setVisibility(0);
    this.mCanceled = false;
  }
  
  public ScrollingTabContainerView$VisibilityAnimListener withFinalVisibility(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, int paramInt) {
    this.mFinalVisibility = paramInt;
    ScrollingTabContainerView.this.mVisibilityAnim = paramViewPropertyAnimatorCompat;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ScrollingTabContainerView$VisibilityAnimListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */