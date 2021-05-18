package android.support.v4.view;

import android.graphics.Rect;

class WindowInsetsCompat$WindowInsetsCompatApi21Impl extends WindowInsetsCompat$WindowInsetsCompatApi20Impl {
  public WindowInsetsCompat consumeStableInsets(Object paramObject) {
    return new WindowInsetsCompat(WindowInsetsCompatApi21.consumeStableInsets(paramObject));
  }
  
  public int getStableInsetBottom(Object paramObject) {
    return WindowInsetsCompatApi21.getStableInsetBottom(paramObject);
  }
  
  public int getStableInsetLeft(Object paramObject) {
    return WindowInsetsCompatApi21.getStableInsetLeft(paramObject);
  }
  
  public int getStableInsetRight(Object paramObject) {
    return WindowInsetsCompatApi21.getStableInsetRight(paramObject);
  }
  
  public int getStableInsetTop(Object paramObject) {
    return WindowInsetsCompatApi21.getStableInsetTop(paramObject);
  }
  
  public boolean hasStableInsets(Object paramObject) {
    return WindowInsetsCompatApi21.hasStableInsets(paramObject);
  }
  
  public boolean isConsumed(Object paramObject) {
    return WindowInsetsCompatApi21.isConsumed(paramObject);
  }
  
  public WindowInsetsCompat replaceSystemWindowInsets(Object paramObject, Rect paramRect) {
    return new WindowInsetsCompat(WindowInsetsCompatApi21.replaceSystemWindowInsets(paramObject, paramRect));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\WindowInsetsCompat$WindowInsetsCompatApi21Impl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */