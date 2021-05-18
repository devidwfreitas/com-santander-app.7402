package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

class FadePort$3 extends AnimatorListenerAdapter {
  boolean mCanceled = false;
  
  float mPausedAlpha = -1.0F;
  
  public void onAnimationCancel(Animator paramAnimator) {
    this.mCanceled = true;
    if (this.mPausedAlpha >= 0.0F)
      finalView.setAlpha(this.mPausedAlpha); 
  }
  
  public void onAnimationEnd(Animator paramAnimator) {
    if (!this.mCanceled)
      finalView.setAlpha(1.0F); 
    if (finalViewToKeep != null && !this.mCanceled)
      finalViewToKeep.setVisibility(finalVisibility); 
    if (finalOverlayView != null)
      ViewGroupOverlay.createFrom(finalSceneRoot).add(finalOverlayView); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\FadePort$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */