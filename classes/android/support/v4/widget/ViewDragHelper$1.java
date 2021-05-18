package android.support.v4.widget;

import android.view.animation.Interpolator;

final class ViewDragHelper$1 implements Interpolator {
  public float getInterpolation(float paramFloat) {
    paramFloat--;
    return paramFloat * paramFloat * paramFloat * paramFloat * paramFloat + 1.0F;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\ViewDragHelper$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */