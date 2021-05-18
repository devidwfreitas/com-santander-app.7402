package android.support.transition;

import android.transition.Transition;
import java.util.ArrayList;
import java.util.Iterator;

class TransitionKitKat$CompatListener implements Transition.TransitionListener {
  private final ArrayList<TransitionInterfaceListener> mListeners = new ArrayList<TransitionInterfaceListener>();
  
  void addListener(TransitionInterfaceListener paramTransitionInterfaceListener) {
    this.mListeners.add(paramTransitionInterfaceListener);
  }
  
  boolean isEmpty() {
    return this.mListeners.isEmpty();
  }
  
  public void onTransitionCancel(Transition paramTransition) {
    Iterator<TransitionInterfaceListener> iterator = this.mListeners.iterator();
    while (iterator.hasNext())
      ((TransitionInterfaceListener<TransitionInterface>)iterator.next()).onTransitionCancel(TransitionKitKat.this.mExternalTransition); 
  }
  
  public void onTransitionEnd(Transition paramTransition) {
    Iterator<TransitionInterfaceListener> iterator = this.mListeners.iterator();
    while (iterator.hasNext())
      ((TransitionInterfaceListener<TransitionInterface>)iterator.next()).onTransitionEnd(TransitionKitKat.this.mExternalTransition); 
  }
  
  public void onTransitionPause(Transition paramTransition) {
    Iterator<TransitionInterfaceListener> iterator = this.mListeners.iterator();
    while (iterator.hasNext())
      ((TransitionInterfaceListener<TransitionInterface>)iterator.next()).onTransitionPause(TransitionKitKat.this.mExternalTransition); 
  }
  
  public void onTransitionResume(Transition paramTransition) {
    Iterator<TransitionInterfaceListener> iterator = this.mListeners.iterator();
    while (iterator.hasNext())
      ((TransitionInterfaceListener<TransitionInterface>)iterator.next()).onTransitionResume(TransitionKitKat.this.mExternalTransition); 
  }
  
  public void onTransitionStart(Transition paramTransition) {
    Iterator<TransitionInterfaceListener> iterator = this.mListeners.iterator();
    while (iterator.hasNext())
      ((TransitionInterfaceListener<TransitionInterface>)iterator.next()).onTransitionStart(TransitionKitKat.this.mExternalTransition); 
  }
  
  void removeListener(TransitionInterfaceListener paramTransitionInterfaceListener) {
    this.mListeners.remove(paramTransitionInterfaceListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionKitKat$CompatListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */