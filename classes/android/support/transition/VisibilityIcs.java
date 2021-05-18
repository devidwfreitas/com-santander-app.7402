package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
class VisibilityIcs extends TransitionIcs implements VisibilityImpl {
  public void init(TransitionInterface paramTransitionInterface, Object paramObject) {
    this.mExternalTransition = paramTransitionInterface;
    if (paramObject == null) {
      this.mTransition = new VisibilityIcs$VisibilityWrapper((VisibilityInterface)paramTransitionInterface);
      return;
    } 
    this.mTransition = (VisibilityPort)paramObject;
  }
  
  public boolean isVisible(TransitionValues paramTransitionValues) {
    return ((VisibilityPort)this.mTransition).isVisible(paramTransitionValues);
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    return ((VisibilityPort)this.mTransition).onAppear(paramViewGroup, paramTransitionValues1, paramInt1, paramTransitionValues2, paramInt2);
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    return ((VisibilityPort)this.mTransition).onDisappear(paramViewGroup, paramTransitionValues1, paramInt1, paramTransitionValues2, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\VisibilityIcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */