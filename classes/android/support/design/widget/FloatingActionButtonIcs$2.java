package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class FloatingActionButtonIcs$2 extends AnimatorListenerAdapter {
  public void onAnimationEnd(Animator paramAnimator) {
    FloatingActionButtonIcs.this.mAnimState = 0;
    if (listener != null)
      listener.onShown(); 
  }
  
  public void onAnimationStart(Animator paramAnimator) {
    FloatingActionButtonIcs.this.mView.internalSetVisibility(0, fromUser);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\FloatingActionButtonIcs$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */