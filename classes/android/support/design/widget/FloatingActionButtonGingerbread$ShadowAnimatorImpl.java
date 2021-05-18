package android.support.design.widget;

abstract class FloatingActionButtonGingerbread$ShadowAnimatorImpl extends ValueAnimatorCompat$AnimatorListenerAdapter implements ValueAnimatorCompat$AnimatorUpdateListener {
  private float mShadowSizeEnd;
  
  private float mShadowSizeStart;
  
  private boolean mValidValues;
  
  private FloatingActionButtonGingerbread$ShadowAnimatorImpl() {}
  
  protected abstract float getTargetShadowSize();
  
  public void onAnimationEnd(ValueAnimatorCompat paramValueAnimatorCompat) {
    FloatingActionButtonGingerbread.this.mShadowDrawable.setShadowSize(this.mShadowSizeEnd);
    this.mValidValues = false;
  }
  
  public void onAnimationUpdate(ValueAnimatorCompat paramValueAnimatorCompat) {
    if (!this.mValidValues) {
      this.mShadowSizeStart = FloatingActionButtonGingerbread.this.mShadowDrawable.getShadowSize();
      this.mShadowSizeEnd = getTargetShadowSize();
      this.mValidValues = true;
    } 
    FloatingActionButtonGingerbread.this.mShadowDrawable.setShadowSize(this.mShadowSizeStart + (this.mShadowSizeEnd - this.mShadowSizeStart) * paramValueAnimatorCompat.getAnimatedFraction());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\FloatingActionButtonGingerbread$ShadowAnimatorImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */