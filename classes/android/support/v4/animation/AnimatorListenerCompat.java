package android.support.v4.animation;

import android.support.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public interface AnimatorListenerCompat {
  void onAnimationCancel(ValueAnimatorCompat paramValueAnimatorCompat);
  
  void onAnimationEnd(ValueAnimatorCompat paramValueAnimatorCompat);
  
  void onAnimationRepeat(ValueAnimatorCompat paramValueAnimatorCompat);
  
  void onAnimationStart(ValueAnimatorCompat paramValueAnimatorCompat);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\animation\AnimatorListenerCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */