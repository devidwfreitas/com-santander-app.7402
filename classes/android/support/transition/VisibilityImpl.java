package android.support.transition;

import android.animation.Animator;
import android.view.ViewGroup;

interface VisibilityImpl {
  boolean isVisible(TransitionValues paramTransitionValues);
  
  Animator onAppear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2);
  
  Animator onDisappear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\VisibilityImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */