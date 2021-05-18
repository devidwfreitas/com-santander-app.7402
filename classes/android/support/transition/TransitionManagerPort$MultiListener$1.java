package android.support.transition;

import android.support.v4.util.ArrayMap;
import java.util.ArrayList;

class TransitionManagerPort$MultiListener$1 extends TransitionPort$TransitionListenerAdapter {
  public void onTransitionEnd(TransitionPort paramTransitionPort) {
    ((ArrayList)runningTransitions.get(TransitionManagerPort$MultiListener.this.mSceneRoot)).remove(paramTransitionPort);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionManagerPort$MultiListener$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */