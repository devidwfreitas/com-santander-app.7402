package android.support.v7.widget;

import android.view.animation.Animation;

class SwitchCompat$1 implements Animation.AnimationListener {
  public void onAnimationEnd(Animation paramAnimation) {
    if (SwitchCompat.this.mPositionAnimator == paramAnimation) {
      float f;
      SwitchCompat switchCompat = SwitchCompat.this;
      if (newCheckedState) {
        f = 1.0F;
      } else {
        f = 0.0F;
      } 
      switchCompat.setThumbPosition(f);
      SwitchCompat.this.mPositionAnimator = null;
    } 
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SwitchCompat$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */