package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class TransitionPort$2 extends AnimatorListenerAdapter {
  public void onAnimationEnd(Animator paramAnimator) {
    TransitionPort.this.end();
    paramAnimator.removeListener((Animator.AnimatorListener)this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionPort$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */