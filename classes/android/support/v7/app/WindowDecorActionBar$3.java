package android.support.v7.app;

import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.view.View;

class WindowDecorActionBar$3 implements ViewPropertyAnimatorUpdateListener {
  public void onAnimationUpdate(View paramView) {
    ((View)WindowDecorActionBar.this.mContainerView.getParent()).invalidate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\WindowDecorActionBar$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */