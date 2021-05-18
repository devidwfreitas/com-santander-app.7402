package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

final class ViewPropertyAnimatorCompatJB$1 extends AnimatorListenerAdapter {
  public void onAnimationCancel(Animator paramAnimator) {
    listener.onAnimationCancel(view);
  }
  
  public void onAnimationEnd(Animator paramAnimator) {
    listener.onAnimationEnd(view);
  }
  
  public void onAnimationStart(Animator paramAnimator) {
    listener.onAnimationStart(view);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPropertyAnimatorCompatJB$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */