package android.support.v4.widget;

import android.view.animation.Animation;

class MaterialProgressDrawable$2 implements Animation.AnimationListener {
  public void onAnimationEnd(Animation paramAnimation) {}
  
  public void onAnimationRepeat(Animation paramAnimation) {
    ring.storeOriginals();
    ring.goToNextColor();
    ring.setStartTrim(ring.getEndTrim());
    if (MaterialProgressDrawable.this.mFinishing) {
      MaterialProgressDrawable.this.mFinishing = false;
      paramAnimation.setDuration(1332L);
      ring.setShowArrow(false);
      return;
    } 
    MaterialProgressDrawable.this.mRotationCount = (MaterialProgressDrawable.this.mRotationCount + 1.0F) % 5.0F;
  }
  
  public void onAnimationStart(Animation paramAnimation) {
    MaterialProgressDrawable.this.mRotationCount = 0.0F;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\MaterialProgressDrawable$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */