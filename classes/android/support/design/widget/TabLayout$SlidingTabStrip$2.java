package android.support.design.widget;

class TabLayout$SlidingTabStrip$2 extends ValueAnimatorCompat$AnimatorListenerAdapter {
  public void onAnimationEnd(ValueAnimatorCompat paramValueAnimatorCompat) {
    TabLayout$SlidingTabStrip.this.mSelectedPosition = position;
    TabLayout$SlidingTabStrip.this.mSelectionOffset = 0.0F;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TabLayout$SlidingTabStrip$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */