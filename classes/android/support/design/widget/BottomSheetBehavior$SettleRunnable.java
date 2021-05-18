package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

class BottomSheetBehavior$SettleRunnable implements Runnable {
  private final int mTargetState;
  
  private final View mView;
  
  BottomSheetBehavior$SettleRunnable(View paramView, int paramInt) {
    this.mView = paramView;
    this.mTargetState = paramInt;
  }
  
  public void run() {
    if (BottomSheetBehavior.this.mViewDragHelper != null && BottomSheetBehavior.this.mViewDragHelper.continueSettling(true)) {
      ViewCompat.postOnAnimation(this.mView, this);
      return;
    } 
    BottomSheetBehavior.this.setStateInternal(this.mTargetState);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BottomSheetBehavior$SettleRunnable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */