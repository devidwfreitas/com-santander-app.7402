package android.support.transition;

import android.view.ViewGroup;

abstract class TransitionManagerStaticsImpl {
  public abstract void beginDelayedTransition(ViewGroup paramViewGroup);
  
  public abstract void beginDelayedTransition(ViewGroup paramViewGroup, TransitionImpl paramTransitionImpl);
  
  public abstract void go(SceneImpl paramSceneImpl);
  
  public abstract void go(SceneImpl paramSceneImpl, TransitionImpl paramTransitionImpl);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionManagerStaticsImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */