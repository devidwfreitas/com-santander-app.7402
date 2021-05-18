package android.support.design.widget;

class AppBarLayout$Behavior$1 implements ValueAnimatorCompat$AnimatorUpdateListener {
  public void onAnimationUpdate(ValueAnimatorCompat paramValueAnimatorCompat) {
    AppBarLayout$Behavior.this.setHeaderTopBottomOffset(coordinatorLayout, child, paramValueAnimatorCompat.getAnimatedIntValue());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\AppBarLayout$Behavior$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */