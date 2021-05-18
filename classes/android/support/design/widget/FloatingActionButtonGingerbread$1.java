package android.support.design.widget;

import android.view.animation.Animation;

class FloatingActionButtonGingerbread$1 extends AnimationUtils$AnimationListenerAdapter {
  public void onAnimationEnd(Animation paramAnimation) {
    byte b;
    FloatingActionButtonGingerbread.this.mAnimState = 0;
    VisibilityAwareImageButton visibilityAwareImageButton = FloatingActionButtonGingerbread.this.mView;
    if (fromUser) {
      b = 8;
    } else {
      b = 4;
    } 
    visibilityAwareImageButton.internalSetVisibility(b, fromUser);
    if (listener != null)
      listener.onHidden(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\FloatingActionButtonGingerbread$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */