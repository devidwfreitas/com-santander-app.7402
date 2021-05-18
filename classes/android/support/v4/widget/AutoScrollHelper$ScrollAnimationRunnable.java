package android.support.v4.widget;

import android.support.v4.view.ViewCompat;

class AutoScrollHelper$ScrollAnimationRunnable implements Runnable {
  public void run() {
    if (!AutoScrollHelper.this.mAnimating)
      return; 
    if (AutoScrollHelper.this.mNeedsReset) {
      AutoScrollHelper.this.mNeedsReset = false;
      AutoScrollHelper.this.mScroller.start();
    } 
    AutoScrollHelper$ClampedScroller autoScrollHelper$ClampedScroller = AutoScrollHelper.this.mScroller;
    if (autoScrollHelper$ClampedScroller.isFinished() || !AutoScrollHelper.this.shouldAnimate()) {
      AutoScrollHelper.this.mAnimating = false;
      return;
    } 
    if (AutoScrollHelper.this.mNeedsCancel) {
      AutoScrollHelper.this.mNeedsCancel = false;
      AutoScrollHelper.this.cancelTargetTouch();
    } 
    autoScrollHelper$ClampedScroller.computeScrollDelta();
    int i = autoScrollHelper$ClampedScroller.getDeltaX();
    int j = autoScrollHelper$ClampedScroller.getDeltaY();
    AutoScrollHelper.this.scrollTargetBy(i, j);
    ViewCompat.postOnAnimation(AutoScrollHelper.this.mTarget, this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\AutoScrollHelper$ScrollAnimationRunnable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */