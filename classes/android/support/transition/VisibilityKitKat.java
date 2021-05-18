package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.transition.Transition;
import android.transition.Visibility;
import android.view.ViewGroup;

@TargetApi(19)
@RequiresApi(19)
class VisibilityKitKat extends TransitionKitKat implements VisibilityImpl {
  public void init(TransitionInterface paramTransitionInterface, Object paramObject) {
    this.mExternalTransition = paramTransitionInterface;
    if (paramObject == null) {
      this.mTransition = (Transition)new VisibilityKitKat$VisibilityWrapper((VisibilityInterface)paramTransitionInterface);
      return;
    } 
    this.mTransition = (Transition)paramObject;
  }
  
  public boolean isVisible(TransitionValues paramTransitionValues) {
    return ((Visibility)this.mTransition).isVisible(convertToPlatform(paramTransitionValues));
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    return ((Visibility)this.mTransition).onAppear(paramViewGroup, convertToPlatform(paramTransitionValues1), paramInt1, convertToPlatform(paramTransitionValues2), paramInt2);
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    return ((Visibility)this.mTransition).onDisappear(paramViewGroup, convertToPlatform(paramTransitionValues1), paramInt1, convertToPlatform(paramTransitionValues2), paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\VisibilityKitKat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */