package android.support.v7.widget.helper;

import android.view.animation.Interpolator;

final class ItemTouchHelper$Callback$2 implements Interpolator {
  public float getInterpolation(float paramFloat) {
    paramFloat--;
    return paramFloat * paramFloat * paramFloat * paramFloat * paramFloat + 1.0F;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper$Callback$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */