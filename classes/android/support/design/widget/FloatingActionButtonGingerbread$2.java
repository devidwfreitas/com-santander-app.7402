package android.support.design.widget;

import android.view.animation.Animation;

class FloatingActionButtonGingerbread$2 extends AnimationUtils$AnimationListenerAdapter {
  public void onAnimationEnd(Animation paramAnimation) {
    FloatingActionButtonGingerbread.this.mAnimState = 0;
    if (listener != null)
      listener.onShown(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\FloatingActionButtonGingerbread$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */