package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class ValueAnimatorCompatImplHoneycombMr1$2 extends AnimatorListenerAdapter {
  public void onAnimationCancel(Animator paramAnimator) {
    listener.onAnimationCancel();
  }
  
  public void onAnimationEnd(Animator paramAnimator) {
    listener.onAnimationEnd();
  }
  
  public void onAnimationStart(Animator paramAnimator) {
    listener.onAnimationStart();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\ValueAnimatorCompatImplHoneycombMr1$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */