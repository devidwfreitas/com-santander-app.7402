package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;

class ChangeBoundsPort$4 extends AnimatorListenerAdapter {
  public void onAnimationEnd(Animator paramAnimator) {
    ViewOverlay.createFrom((View)sceneRoot).remove((Drawable)drawable);
    view.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\ChangeBoundsPort$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */