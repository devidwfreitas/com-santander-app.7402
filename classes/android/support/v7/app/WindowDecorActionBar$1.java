package android.support.v7.app;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

class WindowDecorActionBar$1 extends ViewPropertyAnimatorListenerAdapter {
  public void onAnimationEnd(View paramView) {
    if (WindowDecorActionBar.this.mContentAnimations && WindowDecorActionBar.this.mContentView != null) {
      ViewCompat.setTranslationY(WindowDecorActionBar.this.mContentView, 0.0F);
      ViewCompat.setTranslationY((View)WindowDecorActionBar.this.mContainerView, 0.0F);
    } 
    WindowDecorActionBar.this.mContainerView.setVisibility(8);
    WindowDecorActionBar.this.mContainerView.setTransitioning(false);
    WindowDecorActionBar.this.mCurrentShowAnim = null;
    WindowDecorActionBar.this.completeDeferredDestroyActionMode();
    if (WindowDecorActionBar.this.mOverlayLayout != null)
      ViewCompat.requestApplyInsets((View)WindowDecorActionBar.this.mOverlayLayout); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\WindowDecorActionBar$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */