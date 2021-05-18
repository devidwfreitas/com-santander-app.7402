package android.support.design.widget;

import android.view.View;

class BaseTransientBottomBar$5 implements BaseTransientBottomBar$OnAttachStateChangeListener {
  public void onViewAttachedToWindow(View paramView) {}
  
  public void onViewDetachedFromWindow(View paramView) {
    if (BaseTransientBottomBar.this.isShownOrQueued())
      BaseTransientBottomBar.sHandler.post(new BaseTransientBottomBar$5$1(this)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BaseTransientBottomBar$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */