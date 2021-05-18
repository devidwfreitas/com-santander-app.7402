package android.support.transition;

class ChangeBoundsPort$1 extends TransitionPort$TransitionListenerAdapter {
  boolean mCanceled = false;
  
  public void onTransitionCancel(TransitionPort paramTransitionPort) {
    this.mCanceled = true;
  }
  
  public void onTransitionEnd(TransitionPort paramTransitionPort) {
    if (!this.mCanceled);
  }
  
  public void onTransitionPause(TransitionPort paramTransitionPort) {}
  
  public void onTransitionResume(TransitionPort paramTransitionPort) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\ChangeBoundsPort$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */