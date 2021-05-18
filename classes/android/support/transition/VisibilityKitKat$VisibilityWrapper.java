package android.support.transition;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.ViewGroup;

class VisibilityKitKat$VisibilityWrapper extends Visibility {
  private final VisibilityInterface mVisibility;
  
  VisibilityKitKat$VisibilityWrapper(VisibilityInterface paramVisibilityInterface) {
    this.mVisibility = paramVisibilityInterface;
  }
  
  public void captureEndValues(TransitionValues paramTransitionValues) {
    TransitionKitKat.wrapCaptureEndValues(this.mVisibility, paramTransitionValues);
  }
  
  public void captureStartValues(TransitionValues paramTransitionValues) {
    TransitionKitKat.wrapCaptureStartValues(this.mVisibility, paramTransitionValues);
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2) {
    return this.mVisibility.createAnimator(paramViewGroup, TransitionKitKat.convertToSupport(paramTransitionValues1), TransitionKitKat.convertToSupport(paramTransitionValues2));
  }
  
  public boolean isVisible(TransitionValues paramTransitionValues) {
    if (paramTransitionValues == null)
      return false; 
    TransitionValues transitionValues = new TransitionValues();
    TransitionKitKat.copyValues(paramTransitionValues, transitionValues);
    return this.mVisibility.isVisible(transitionValues);
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    return this.mVisibility.onAppear(paramViewGroup, TransitionKitKat.convertToSupport(paramTransitionValues1), paramInt1, TransitionKitKat.convertToSupport(paramTransitionValues2), paramInt2);
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    return this.mVisibility.onDisappear(paramViewGroup, TransitionKitKat.convertToSupport(paramTransitionValues1), paramInt1, TransitionKitKat.convertToSupport(paramTransitionValues2), paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\VisibilityKitKat$VisibilityWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */