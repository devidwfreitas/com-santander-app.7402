package android.support.v7.widget.helper;

import android.support.v4.animation.AnimatorUpdateListenerCompat;
import android.support.v4.animation.ValueAnimatorCompat;

class ItemTouchHelper$RecoverAnimation$1 implements AnimatorUpdateListenerCompat {
  public void onAnimationUpdate(ValueAnimatorCompat paramValueAnimatorCompat) {
    ItemTouchHelper$RecoverAnimation.this.setFraction(paramValueAnimatorCompat.getAnimatedFraction());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper$RecoverAnimation$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */