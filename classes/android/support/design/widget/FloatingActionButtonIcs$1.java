package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class FloatingActionButtonIcs$1 extends AnimatorListenerAdapter {
  private boolean mCancelled;
  
  public void onAnimationCancel(Animator paramAnimator) {
    this.mCancelled = true;
  }
  
  public void onAnimationEnd(Animator paramAnimator) {
    FloatingActionButtonIcs.this.mAnimState = 0;
    if (!this.mCancelled) {
      byte b;
      VisibilityAwareImageButton visibilityAwareImageButton = FloatingActionButtonIcs.this.mView;
      if (fromUser) {
        b = 8;
      } else {
        b = 4;
      } 
      visibilityAwareImageButton.internalSetVisibility(b, fromUser);
      if (listener != null)
        listener.onHidden(); 
    } 
  }
  
  public void onAnimationStart(Animator paramAnimator) {
    FloatingActionButtonIcs.this.mView.internalSetVisibility(0, fromUser);
    this.mCancelled = false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\FloatingActionButtonIcs$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */