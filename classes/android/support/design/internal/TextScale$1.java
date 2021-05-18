package android.support.design.internal;

import android.animation.ValueAnimator;
import android.widget.TextView;

class TextScale$1 implements ValueAnimator.AnimatorUpdateListener {
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    float f = ((Float)paramValueAnimator.getAnimatedValue()).floatValue();
    view.setScaleX(f);
    view.setScaleY(f);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\TextScale$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */