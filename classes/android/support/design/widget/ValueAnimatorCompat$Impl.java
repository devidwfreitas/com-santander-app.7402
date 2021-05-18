package android.support.design.widget;

import android.view.animation.Interpolator;

abstract class ValueAnimatorCompat$Impl {
  abstract void addListener(ValueAnimatorCompat$Impl$AnimatorListenerProxy paramValueAnimatorCompat$Impl$AnimatorListenerProxy);
  
  abstract void addUpdateListener(ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy paramValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy);
  
  abstract void cancel();
  
  abstract void end();
  
  abstract float getAnimatedFloatValue();
  
  abstract float getAnimatedFraction();
  
  abstract int getAnimatedIntValue();
  
  abstract long getDuration();
  
  abstract boolean isRunning();
  
  abstract void setDuration(long paramLong);
  
  abstract void setFloatValues(float paramFloat1, float paramFloat2);
  
  abstract void setIntValues(int paramInt1, int paramInt2);
  
  abstract void setInterpolator(Interpolator paramInterpolator);
  
  abstract void start();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\ValueAnimatorCompat$Impl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */