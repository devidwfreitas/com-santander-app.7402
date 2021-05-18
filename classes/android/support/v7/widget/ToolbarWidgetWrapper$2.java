package android.support.v7.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

class ToolbarWidgetWrapper$2 extends ViewPropertyAnimatorListenerAdapter {
  private boolean mCanceled = false;
  
  public void onAnimationCancel(View paramView) {
    this.mCanceled = true;
  }
  
  public void onAnimationEnd(View paramView) {
    if (!this.mCanceled)
      ToolbarWidgetWrapper.this.mToolbar.setVisibility(visibility); 
  }
  
  public void onAnimationStart(View paramView) {
    ToolbarWidgetWrapper.this.mToolbar.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ToolbarWidgetWrapper$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */