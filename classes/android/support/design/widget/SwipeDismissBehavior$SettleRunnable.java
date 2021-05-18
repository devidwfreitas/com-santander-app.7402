package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

class SwipeDismissBehavior$SettleRunnable implements Runnable {
  private final boolean mDismiss;
  
  private final View mView;
  
  SwipeDismissBehavior$SettleRunnable(View paramView, boolean paramBoolean) {
    this.mView = paramView;
    this.mDismiss = paramBoolean;
  }
  
  public void run() {
    if (SwipeDismissBehavior.this.mViewDragHelper != null && SwipeDismissBehavior.this.mViewDragHelper.continueSettling(true)) {
      ViewCompat.postOnAnimation(this.mView, this);
      return;
    } 
    if (this.mDismiss && SwipeDismissBehavior.this.mListener != null) {
      SwipeDismissBehavior.this.mListener.onDismiss(this.mView);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\SwipeDismissBehavior$SettleRunnable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */