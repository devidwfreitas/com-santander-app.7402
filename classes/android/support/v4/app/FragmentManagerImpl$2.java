package android.support.v4.app;

import android.view.View;
import android.view.animation.Animation;

class FragmentManagerImpl$2 extends FragmentManagerImpl$AnimateOnHWLayerIfNeededListener {
  FragmentManagerImpl$2(View paramView, Animation paramAnimation) {
    super(paramView, paramAnimation);
  }
  
  public void onAnimationEnd(Animation paramAnimation) {
    super.onAnimationEnd(paramAnimation);
    if (fragment.getAnimatingAway() != null) {
      fragment.setAnimatingAway(null);
      FragmentManagerImpl.this.moveToState(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentManagerImpl$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */