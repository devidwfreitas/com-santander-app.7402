package android.support.v4.animation;

import android.animation.Animator;

class HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper implements Animator.AnimatorListener {
  final ValueAnimatorCompat mValueAnimatorCompat;
  
  final AnimatorListenerCompat mWrapped;
  
  public HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper(AnimatorListenerCompat paramAnimatorListenerCompat, ValueAnimatorCompat paramValueAnimatorCompat) {
    this.mWrapped = paramAnimatorListenerCompat;
    this.mValueAnimatorCompat = paramValueAnimatorCompat;
  }
  
  public void onAnimationCancel(Animator paramAnimator) {
    this.mWrapped.onAnimationCancel(this.mValueAnimatorCompat);
  }
  
  public void onAnimationEnd(Animator paramAnimator) {
    this.mWrapped.onAnimationEnd(this.mValueAnimatorCompat);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {
    this.mWrapped.onAnimationRepeat(this.mValueAnimatorCompat);
  }
  
  public void onAnimationStart(Animator paramAnimator) {
    this.mWrapped.onAnimationStart(this.mValueAnimatorCompat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\animation\HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */