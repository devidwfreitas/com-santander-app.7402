package android.support.transition;

import android.support.annotation.NonNull;

public interface Transition$TransitionListener extends TransitionInterfaceListener<Transition> {
  void onTransitionCancel(@NonNull Transition paramTransition);
  
  void onTransitionEnd(@NonNull Transition paramTransition);
  
  void onTransitionPause(@NonNull Transition paramTransition);
  
  void onTransitionResume(@NonNull Transition paramTransition);
  
  void onTransitionStart(@NonNull Transition paramTransition);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\Transition$TransitionListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */