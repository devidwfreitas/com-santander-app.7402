package android.support.transition;

interface TransitionInterfaceListener<TransitionT extends TransitionInterface> {
  void onTransitionCancel(TransitionT paramTransitionT);
  
  void onTransitionEnd(TransitionT paramTransitionT);
  
  void onTransitionPause(TransitionT paramTransitionT);
  
  void onTransitionResume(TransitionT paramTransitionT);
  
  void onTransitionStart(TransitionT paramTransitionT);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionInterfaceListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */