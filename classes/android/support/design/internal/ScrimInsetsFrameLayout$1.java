package android.support.design.internal;

import android.graphics.Rect;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

class ScrimInsetsFrameLayout$1 implements OnApplyWindowInsetsListener {
  public WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat) {
    if (ScrimInsetsFrameLayout.this.mInsets == null)
      ScrimInsetsFrameLayout.this.mInsets = new Rect(); 
    ScrimInsetsFrameLayout.this.mInsets.set(paramWindowInsetsCompat.getSystemWindowInsetLeft(), paramWindowInsetsCompat.getSystemWindowInsetTop(), paramWindowInsetsCompat.getSystemWindowInsetRight(), paramWindowInsetsCompat.getSystemWindowInsetBottom());
    ScrimInsetsFrameLayout.this.onInsetsChanged(paramWindowInsetsCompat);
    ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
    if (!paramWindowInsetsCompat.hasSystemWindowInsets() || ScrimInsetsFrameLayout.this.mInsetForeground == null) {
      boolean bool1 = true;
      scrimInsetsFrameLayout.setWillNotDraw(bool1);
      ViewCompat.postInvalidateOnAnimation((View)ScrimInsetsFrameLayout.this);
      return paramWindowInsetsCompat.consumeSystemWindowInsets();
    } 
    boolean bool = false;
    scrimInsetsFrameLayout.setWillNotDraw(bool);
    ViewCompat.postInvalidateOnAnimation((View)ScrimInsetsFrameLayout.this);
    return paramWindowInsetsCompat.consumeSystemWindowInsets();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\ScrimInsetsFrameLayout$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */