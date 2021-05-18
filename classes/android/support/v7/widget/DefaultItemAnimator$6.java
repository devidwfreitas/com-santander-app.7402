package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;

class DefaultItemAnimator$6 extends DefaultItemAnimator$VpaListenerAdapter {
  public void onAnimationCancel(View paramView) {
    if (deltaX != 0)
      ViewCompat.setTranslationX(paramView, 0.0F); 
    if (deltaY != 0)
      ViewCompat.setTranslationY(paramView, 0.0F); 
  }
  
  public void onAnimationEnd(View paramView) {
    animation.setListener(null);
    DefaultItemAnimator.this.dispatchMoveFinished(holder);
    DefaultItemAnimator.this.mMoveAnimations.remove(holder);
    DefaultItemAnimator.this.dispatchFinishedWhenDone();
  }
  
  public void onAnimationStart(View paramView) {
    DefaultItemAnimator.this.dispatchMoveStarting(holder);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DefaultItemAnimator$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */