package android.support.transition;

class TransitionSetPort$1 extends TransitionPort$TransitionListenerAdapter {
  public void onTransitionEnd(TransitionPort paramTransitionPort) {
    nextTransition.runAnimators();
    paramTransitionPort.removeListener(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionSetPort$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */