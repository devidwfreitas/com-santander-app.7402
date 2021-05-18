package android.support.transition;

import android.animation.Animator;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.view.ViewGroup;

class TransitionKitKat$TransitionWrapper extends Transition {
  private TransitionInterface mTransition;
  
  public TransitionKitKat$TransitionWrapper(TransitionInterface paramTransitionInterface) {
    this.mTransition = paramTransitionInterface;
  }
  
  public void captureEndValues(TransitionValues paramTransitionValues) {
    TransitionKitKat.wrapCaptureEndValues(this.mTransition, paramTransitionValues);
  }
  
  public void captureStartValues(TransitionValues paramTransitionValues) {
    TransitionKitKat.wrapCaptureStartValues(this.mTransition, paramTransitionValues);
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2) {
    return this.mTransition.createAnimator(paramViewGroup, TransitionKitKat.convertToSupport(paramTransitionValues1), TransitionKitKat.convertToSupport(paramTransitionValues2));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionKitKat$TransitionWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */