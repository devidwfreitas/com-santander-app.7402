package android.support.design.widget;

class StateListAnimator$1 extends ValueAnimatorCompat$AnimatorListenerAdapter {
  public void onAnimationEnd(ValueAnimatorCompat paramValueAnimatorCompat) {
    if (StateListAnimator.this.mRunningAnimator == paramValueAnimatorCompat)
      StateListAnimator.this.mRunningAnimator = null; 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\StateListAnimator$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */