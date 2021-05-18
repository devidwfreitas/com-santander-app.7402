package android.support.v4.animation;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.View;

@TargetApi(12)
@RequiresApi(12)
class HoneycombMr1AnimatorCompatProvider implements AnimatorProvider {
  private TimeInterpolator mDefaultInterpolator;
  
  public void clearInterpolator(View paramView) {
    if (this.mDefaultInterpolator == null)
      this.mDefaultInterpolator = (new ValueAnimator()).getInterpolator(); 
    paramView.animate().setInterpolator(this.mDefaultInterpolator);
  }
  
  public ValueAnimatorCompat emptyValueAnimator() {
    return new HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat((Animator)ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F }));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\animation\HoneycombMr1AnimatorCompatProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */