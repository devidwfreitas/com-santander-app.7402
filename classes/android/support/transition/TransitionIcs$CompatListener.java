package android.support.transition;

import java.util.ArrayList;
import java.util.Iterator;

class TransitionIcs$CompatListener implements TransitionPort$TransitionListener {
  private final ArrayList<TransitionInterfaceListener> mListeners = new ArrayList<TransitionInterfaceListener>();
  
  public void addListener(TransitionInterfaceListener paramTransitionInterfaceListener) {
    this.mListeners.add(paramTransitionInterfaceListener);
  }
  
  public boolean isEmpty() {
    return this.mListeners.isEmpty();
  }
  
  public void onTransitionCancel(TransitionPort paramTransitionPort) {
    Iterator<TransitionInterfaceListener> iterator = this.mListeners.iterator();
    while (iterator.hasNext())
      ((TransitionInterfaceListener<TransitionInterface>)iterator.next()).onTransitionCancel(TransitionIcs.this.mExternalTransition); 
  }
  
  public void onTransitionEnd(TransitionPort paramTransitionPort) {
    Iterator<TransitionInterfaceListener> iterator = this.mListeners.iterator();
    while (iterator.hasNext())
      ((TransitionInterfaceListener<TransitionInterface>)iterator.next()).onTransitionEnd(TransitionIcs.this.mExternalTransition); 
  }
  
  public void onTransitionPause(TransitionPort paramTransitionPort) {
    Iterator<TransitionInterfaceListener> iterator = this.mListeners.iterator();
    while (iterator.hasNext())
      ((TransitionInterfaceListener<TransitionInterface>)iterator.next()).onTransitionPause(TransitionIcs.this.mExternalTransition); 
  }
  
  public void onTransitionResume(TransitionPort paramTransitionPort) {
    Iterator<TransitionInterfaceListener> iterator = this.mListeners.iterator();
    while (iterator.hasNext())
      ((TransitionInterfaceListener<TransitionInterface>)iterator.next()).onTransitionResume(TransitionIcs.this.mExternalTransition); 
  }
  
  public void onTransitionStart(TransitionPort paramTransitionPort) {
    Iterator<TransitionInterfaceListener> iterator = this.mListeners.iterator();
    while (iterator.hasNext())
      ((TransitionInterfaceListener<TransitionInterface>)iterator.next()).onTransitionStart(TransitionIcs.this.mExternalTransition); 
  }
  
  public void removeListener(TransitionInterfaceListener paramTransitionInterfaceListener) {
    this.mListeners.remove(paramTransitionInterfaceListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionIcs$CompatListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */