package android.support.design.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

class BaseTransientBottomBar$9 extends ViewPropertyAnimatorListenerAdapter {
  public void onAnimationEnd(View paramView) {
    BaseTransientBottomBar.this.onViewHidden(event);
  }
  
  public void onAnimationStart(View paramView) {
    BaseTransientBottomBar.access$000(BaseTransientBottomBar.this).animateContentOut(0, 180);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BaseTransientBottomBar$9.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */