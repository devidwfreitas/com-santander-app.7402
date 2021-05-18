package android.support.v7.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class SwitchCompat$ThumbAnimation extends Animation {
  final float mDiff;
  
  final float mEndPosition;
  
  final float mStartPosition;
  
  SwitchCompat$ThumbAnimation(float paramFloat1, float paramFloat2) {
    this.mStartPosition = paramFloat1;
    this.mEndPosition = paramFloat2;
    this.mDiff = paramFloat2 - paramFloat1;
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation) {
    SwitchCompat.this.setThumbPosition(this.mStartPosition + this.mDiff * paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SwitchCompat$ThumbAnimation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */