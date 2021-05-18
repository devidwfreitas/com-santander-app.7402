package android.support.design.widget;

class TabLayout$SlidingTabStrip$1 implements ValueAnimatorCompat$AnimatorUpdateListener {
  public void onAnimationUpdate(ValueAnimatorCompat paramValueAnimatorCompat) {
    float f = paramValueAnimatorCompat.getAnimatedFraction();
    TabLayout$SlidingTabStrip.this.setIndicatorPosition(AnimationUtils.lerp(startLeft, targetLeft, f), AnimationUtils.lerp(startRight, targetRight, f));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TabLayout$SlidingTabStrip$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */