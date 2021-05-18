package android.support.design.widget;

import android.view.View;

class BaseTransientBottomBar$6 implements BaseTransientBottomBar$OnLayoutChangeListener {
  public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    BaseTransientBottomBar.this.mView.setOnLayoutChangeListener(null);
    if (BaseTransientBottomBar.this.shouldAnimate()) {
      BaseTransientBottomBar.this.animateViewIn();
      return;
    } 
    BaseTransientBottomBar.this.onViewShown();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BaseTransientBottomBar$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */