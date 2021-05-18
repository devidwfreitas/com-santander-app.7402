package android.support.v4.app;

import android.transition.Transition;
import android.view.View;
import java.util.ArrayList;

final class FragmentTransitionCompat21$2 implements Transition.TransitionListener {
  public void onTransitionCancel(Transition paramTransition) {}
  
  public void onTransitionEnd(Transition paramTransition) {
    paramTransition.removeListener(this);
    fragmentView.setVisibility(8);
    int j = exitingViews.size();
    for (int i = 0; i < j; i++)
      ((View)exitingViews.get(i)).setVisibility(0); 
  }
  
  public void onTransitionPause(Transition paramTransition) {}
  
  public void onTransitionResume(Transition paramTransition) {}
  
  public void onTransitionStart(Transition paramTransition) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTransitionCompat21$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */