package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build;

public class WindowInsetsCompat {
  private static final WindowInsetsCompat$WindowInsetsCompatImpl IMPL = new WindowInsetsCompat$WindowInsetsCompatBaseImpl();
  
  private final Object mInsets;
  
  public WindowInsetsCompat(WindowInsetsCompat paramWindowInsetsCompat) {
    Object object;
    if (paramWindowInsetsCompat == null) {
      paramWindowInsetsCompat = null;
    } else {
      object = IMPL.getSourceWindowInsets(paramWindowInsetsCompat.mInsets);
    } 
    this.mInsets = object;
  }
  
  WindowInsetsCompat(Object paramObject) {
    this.mInsets = paramObject;
  }
  
  static Object unwrap(WindowInsetsCompat paramWindowInsetsCompat) {
    return (paramWindowInsetsCompat == null) ? null : paramWindowInsetsCompat.mInsets;
  }
  
  static WindowInsetsCompat wrap(Object paramObject) {
    return (paramObject == null) ? null : new WindowInsetsCompat(paramObject);
  }
  
  public WindowInsetsCompat consumeStableInsets() {
    return IMPL.consumeStableInsets(this.mInsets);
  }
  
  public WindowInsetsCompat consumeSystemWindowInsets() {
    return IMPL.consumeSystemWindowInsets(this.mInsets);
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      return (this.mInsets == null) ? (!(((WindowInsetsCompat)paramObject).mInsets != null)) : this.mInsets.equals(((WindowInsetsCompat)paramObject).mInsets);
    } 
    return true;
  }
  
  public int getStableInsetBottom() {
    return IMPL.getStableInsetBottom(this.mInsets);
  }
  
  public int getStableInsetLeft() {
    return IMPL.getStableInsetLeft(this.mInsets);
  }
  
  public int getStableInsetRight() {
    return IMPL.getStableInsetRight(this.mInsets);
  }
  
  public int getStableInsetTop() {
    return IMPL.getStableInsetTop(this.mInsets);
  }
  
  public int getSystemWindowInsetBottom() {
    return IMPL.getSystemWindowInsetBottom(this.mInsets);
  }
  
  public int getSystemWindowInsetLeft() {
    return IMPL.getSystemWindowInsetLeft(this.mInsets);
  }
  
  public int getSystemWindowInsetRight() {
    return IMPL.getSystemWindowInsetRight(this.mInsets);
  }
  
  public int getSystemWindowInsetTop() {
    return IMPL.getSystemWindowInsetTop(this.mInsets);
  }
  
  public boolean hasInsets() {
    return IMPL.hasInsets(this.mInsets);
  }
  
  public boolean hasStableInsets() {
    return IMPL.hasStableInsets(this.mInsets);
  }
  
  public boolean hasSystemWindowInsets() {
    return IMPL.hasSystemWindowInsets(this.mInsets);
  }
  
  public int hashCode() {
    return (this.mInsets == null) ? 0 : this.mInsets.hashCode();
  }
  
  public boolean isConsumed() {
    return IMPL.isConsumed(this.mInsets);
  }
  
  public boolean isRound() {
    return IMPL.isRound(this.mInsets);
  }
  
  public WindowInsetsCompat replaceSystemWindowInsets(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    return IMPL.replaceSystemWindowInsets(this.mInsets, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public WindowInsetsCompat replaceSystemWindowInsets(Rect paramRect) {
    return IMPL.replaceSystemWindowInsets(this.mInsets, paramRect);
  }
  
  static {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21) {
      IMPL = new WindowInsetsCompat$WindowInsetsCompatApi21Impl();
      return;
    } 
    if (i >= 20) {
      IMPL = new WindowInsetsCompat$WindowInsetsCompatApi20Impl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\WindowInsetsCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */