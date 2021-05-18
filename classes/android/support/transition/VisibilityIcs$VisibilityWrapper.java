package android.support.transition;

import android.animation.Animator;
import android.view.ViewGroup;

class VisibilityIcs$VisibilityWrapper extends VisibilityPort {
  private VisibilityInterface mVisibility;
  
  VisibilityIcs$VisibilityWrapper(VisibilityInterface paramVisibilityInterface) {
    this.mVisibility = paramVisibilityInterface;
  }
  
  public void captureEndValues(TransitionValues paramTransitionValues) {
    this.mVisibility.captureEndValues(paramTransitionValues);
  }
  
  public void captureStartValues(TransitionValues paramTransitionValues) {
    this.mVisibility.captureStartValues(paramTransitionValues);
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2) {
    return this.mVisibility.createAnimator(paramViewGroup, paramTransitionValues1, paramTransitionValues2);
  }
  
  public boolean isVisible(TransitionValues paramTransitionValues) {
    return this.mVisibility.isVisible(paramTransitionValues);
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    return this.mVisibility.onAppear(paramViewGroup, paramTransitionValues1, paramInt1, paramTransitionValues2, paramInt2);
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    return this.mVisibility.onDisappear(paramViewGroup, paramTransitionValues1, paramInt1, paramTransitionValues2, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\VisibilityIcs$VisibilityWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */