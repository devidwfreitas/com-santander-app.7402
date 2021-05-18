package android.support.transition;

class TransitionSetPort$TransitionSetListener extends TransitionPort$TransitionListenerAdapter {
  TransitionSetPort mTransitionSet;
  
  TransitionSetPort$TransitionSetListener(TransitionSetPort paramTransitionSetPort) {
    this.mTransitionSet = paramTransitionSetPort;
  }
  
  public void onTransitionEnd(TransitionPort paramTransitionPort) {
    TransitionSetPort transitionSetPort = this.mTransitionSet;
    transitionSetPort.mCurrentListeners--;
    if (this.mTransitionSet.mCurrentListeners == 0) {
      this.mTransitionSet.mStarted = false;
      this.mTransitionSet.end();
    } 
    paramTransitionPort.removeListener(this);
  }
  
  public void onTransitionStart(TransitionPort paramTransitionPort) {
    if (!this.mTransitionSet.mStarted) {
      this.mTransitionSet.start();
      this.mTransitionSet.mStarted = true;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionSetPort$TransitionSetListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */