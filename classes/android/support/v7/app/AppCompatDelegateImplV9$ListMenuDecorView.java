package android.support.v7.app;

import android.content.Context;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.ContentFrameLayout;
import android.view.KeyEvent;
import android.view.MotionEvent;

class AppCompatDelegateImplV9$ListMenuDecorView extends ContentFrameLayout {
  public AppCompatDelegateImplV9$ListMenuDecorView(Context paramContext) {
    super(paramContext);
  }
  
  private boolean isOutOfBounds(int paramInt1, int paramInt2) {
    return (paramInt1 < -5 || paramInt2 < -5 || paramInt1 > getWidth() + 5 || paramInt2 > getHeight() + 5);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent) {
    return (AppCompatDelegateImplV9.this.dispatchKeyEvent(paramKeyEvent) || super.dispatchKeyEvent(paramKeyEvent));
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) {
    if (paramMotionEvent.getAction() == 0 && isOutOfBounds((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
      AppCompatDelegateImplV9.this.closePanel(0);
      return true;
    } 
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public void setBackgroundResource(int paramInt) {
    setBackgroundDrawable(AppCompatResources.getDrawable(getContext(), paramInt));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$ListMenuDecorView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */