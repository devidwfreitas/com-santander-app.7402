package android.support.transition;

import android.view.View;

class FadePort$1 extends TransitionPort$TransitionListenerAdapter {
  boolean mCanceled = false;
  
  float mPausedAlpha;
  
  public void onTransitionCancel(TransitionPort paramTransitionPort) {
    endView.setAlpha(1.0F);
    this.mCanceled = true;
  }
  
  public void onTransitionEnd(TransitionPort paramTransitionPort) {
    if (!this.mCanceled)
      endView.setAlpha(1.0F); 
  }
  
  public void onTransitionPause(TransitionPort paramTransitionPort) {
    this.mPausedAlpha = endView.getAlpha();
    endView.setAlpha(1.0F);
  }
  
  public void onTransitionResume(TransitionPort paramTransitionPort) {
    endView.setAlpha(this.mPausedAlpha);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\FadePort$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */