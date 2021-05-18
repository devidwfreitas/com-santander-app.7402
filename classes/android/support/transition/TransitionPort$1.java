package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.support.v4.util.ArrayMap;

class TransitionPort$1 extends AnimatorListenerAdapter {
  public void onAnimationEnd(Animator paramAnimator) {
    runningAnimators.remove(paramAnimator);
    TransitionPort.this.mCurrentAnimators.remove(paramAnimator);
  }
  
  public void onAnimationStart(Animator paramAnimator) {
    TransitionPort.this.mCurrentAnimators.add(paramAnimator);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionPort$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */