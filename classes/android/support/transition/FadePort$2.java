package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

class FadePort$2 extends AnimatorListenerAdapter {
  public void onAnimationEnd(Animator paramAnimator) {
    finalView.setAlpha(1.0F);
    if (finalViewToKeep != null)
      finalViewToKeep.setVisibility(finalVisibility); 
    if (finalOverlayView != null)
      ViewGroupOverlay.createFrom(finalSceneRoot).remove(finalOverlayView); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\FadePort$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */