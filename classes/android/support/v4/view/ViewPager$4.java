package android.support.v4.view;

import android.graphics.Rect;
import android.view.View;

class ViewPager$4 implements OnApplyWindowInsetsListener {
  private final Rect mTempRect = new Rect();
  
  public WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat) {
    WindowInsetsCompat windowInsetsCompat = ViewCompat.onApplyWindowInsets(paramView, paramWindowInsetsCompat);
    if (windowInsetsCompat.isConsumed())
      return windowInsetsCompat; 
    Rect rect = this.mTempRect;
    rect.left = windowInsetsCompat.getSystemWindowInsetLeft();
    rect.top = windowInsetsCompat.getSystemWindowInsetTop();
    rect.right = windowInsetsCompat.getSystemWindowInsetRight();
    rect.bottom = windowInsetsCompat.getSystemWindowInsetBottom();
    int i = 0;
    int j = ViewPager.this.getChildCount();
    while (i < j) {
      WindowInsetsCompat windowInsetsCompat1 = ViewCompat.dispatchApplyWindowInsets(ViewPager.this.getChildAt(i), windowInsetsCompat);
      rect.left = Math.min(windowInsetsCompat1.getSystemWindowInsetLeft(), rect.left);
      rect.top = Math.min(windowInsetsCompat1.getSystemWindowInsetTop(), rect.top);
      rect.right = Math.min(windowInsetsCompat1.getSystemWindowInsetRight(), rect.right);
      rect.bottom = Math.min(windowInsetsCompat1.getSystemWindowInsetBottom(), rect.bottom);
      i++;
    } 
    return windowInsetsCompat.replaceSystemWindowInsets(rect.left, rect.top, rect.right, rect.bottom);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPager$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */