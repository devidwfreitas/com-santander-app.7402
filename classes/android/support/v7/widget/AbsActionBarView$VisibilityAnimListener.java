package android.support.v7.widget;

import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;

public class AbsActionBarView$VisibilityAnimListener implements ViewPropertyAnimatorListener {
  private boolean mCanceled = false;
  
  int mFinalVisibility;
  
  public void onAnimationCancel(View paramView) {
    this.mCanceled = true;
  }
  
  public void onAnimationEnd(View paramView) {
    if (this.mCanceled)
      return; 
    AbsActionBarView.this.mVisibilityAnim = null;
    AbsActionBarView.access$101(AbsActionBarView.this, this.mFinalVisibility);
  }
  
  public void onAnimationStart(View paramView) {
    AbsActionBarView.access$001(AbsActionBarView.this, 0);
    this.mCanceled = false;
  }
  
  public AbsActionBarView$VisibilityAnimListener withFinalVisibility(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, int paramInt) {
    AbsActionBarView.this.mVisibilityAnim = paramViewPropertyAnimatorCompat;
    this.mFinalVisibility = paramInt;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AbsActionBarView$VisibilityAnimListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */