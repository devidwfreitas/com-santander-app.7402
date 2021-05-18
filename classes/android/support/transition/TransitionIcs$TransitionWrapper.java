package android.support.transition;

import android.animation.Animator;
import android.view.ViewGroup;

class TransitionIcs$TransitionWrapper extends TransitionPort {
  private TransitionInterface mTransition;
  
  public TransitionIcs$TransitionWrapper(TransitionInterface paramTransitionInterface) {
    this.mTransition = paramTransitionInterface;
  }
  
  public void captureEndValues(TransitionValues paramTransitionValues) {
    this.mTransition.captureEndValues(paramTransitionValues);
  }
  
  public void captureStartValues(TransitionValues paramTransitionValues) {
    this.mTransition.captureStartValues(paramTransitionValues);
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2) {
    return this.mTransition.createAnimator(paramViewGroup, paramTransitionValues1, paramTransitionValues2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionIcs$TransitionWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */