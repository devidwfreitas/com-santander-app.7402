package android.support.v4.app;

import android.transition.Transition;
import java.util.ArrayList;

final class FragmentTransitionCompat21$5 implements Transition.TransitionListener {
  public void onTransitionCancel(Transition paramTransition) {}
  
  public void onTransitionEnd(Transition paramTransition) {}
  
  public void onTransitionPause(Transition paramTransition) {}
  
  public void onTransitionResume(Transition paramTransition) {}
  
  public void onTransitionStart(Transition paramTransition) {
    if (enterTransition != null)
      FragmentTransitionCompat21.replaceTargets(enterTransition, enteringViews, null); 
    if (exitTransition != null)
      FragmentTransitionCompat21.replaceTargets(exitTransition, exitingViews, null); 
    if (sharedElementTransition != null)
      FragmentTransitionCompat21.replaceTargets(sharedElementTransition, sharedElementsIn, null); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTransitionCompat21$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */