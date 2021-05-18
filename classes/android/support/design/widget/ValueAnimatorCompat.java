package android.support.design.widget;

import android.view.animation.Interpolator;

class ValueAnimatorCompat {
  private final ValueAnimatorCompat$Impl mImpl;
  
  ValueAnimatorCompat(ValueAnimatorCompat$Impl paramValueAnimatorCompat$Impl) {
    this.mImpl = paramValueAnimatorCompat$Impl;
  }
  
  public void addListener(ValueAnimatorCompat$AnimatorListener paramValueAnimatorCompat$AnimatorListener) {
    if (paramValueAnimatorCompat$AnimatorListener != null) {
      this.mImpl.addListener(new ValueAnimatorCompat$2(this, paramValueAnimatorCompat$AnimatorListener));
      return;
    } 
    this.mImpl.addListener(null);
  }
  
  public void addUpdateListener(ValueAnimatorCompat$AnimatorUpdateListener paramValueAnimatorCompat$AnimatorUpdateListener) {
    if (paramValueAnimatorCompat$AnimatorUpdateListener != null) {
      this.mImpl.addUpdateListener(new ValueAnimatorCompat$1(this, paramValueAnimatorCompat$AnimatorUpdateListener));
      return;
    } 
    this.mImpl.addUpdateListener(null);
  }
  
  public void cancel() {
    this.mImpl.cancel();
  }
  
  public void end() {
    this.mImpl.end();
  }
  
  public float getAnimatedFloatValue() {
    return this.mImpl.getAnimatedFloatValue();
  }
  
  public float getAnimatedFraction() {
    return this.mImpl.getAnimatedFraction();
  }
  
  public int getAnimatedIntValue() {
    return this.mImpl.getAnimatedIntValue();
  }
  
  public long getDuration() {
    return this.mImpl.getDuration();
  }
  
  public boolean isRunning() {
    return this.mImpl.isRunning();
  }
  
  public void setDuration(long paramLong) {
    this.mImpl.setDuration(paramLong);
  }
  
  public void setFloatValues(float paramFloat1, float paramFloat2) {
    this.mImpl.setFloatValues(paramFloat1, paramFloat2);
  }
  
  public void setIntValues(int paramInt1, int paramInt2) {
    this.mImpl.setIntValues(paramInt1, paramInt2);
  }
  
  public void setInterpolator(Interpolator paramInterpolator) {
    this.mImpl.setInterpolator(paramInterpolator);
  }
  
  public void start() {
    this.mImpl.start();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\ValueAnimatorCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */