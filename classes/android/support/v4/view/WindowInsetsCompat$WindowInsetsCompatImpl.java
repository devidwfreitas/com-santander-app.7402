package android.support.v4.view;

import android.graphics.Rect;

interface WindowInsetsCompat$WindowInsetsCompatImpl {
  WindowInsetsCompat consumeStableInsets(Object paramObject);
  
  WindowInsetsCompat consumeSystemWindowInsets(Object paramObject);
  
  Object getSourceWindowInsets(Object paramObject);
  
  int getStableInsetBottom(Object paramObject);
  
  int getStableInsetLeft(Object paramObject);
  
  int getStableInsetRight(Object paramObject);
  
  int getStableInsetTop(Object paramObject);
  
  int getSystemWindowInsetBottom(Object paramObject);
  
  int getSystemWindowInsetLeft(Object paramObject);
  
  int getSystemWindowInsetRight(Object paramObject);
  
  int getSystemWindowInsetTop(Object paramObject);
  
  boolean hasInsets(Object paramObject);
  
  boolean hasStableInsets(Object paramObject);
  
  boolean hasSystemWindowInsets(Object paramObject);
  
  boolean isConsumed(Object paramObject);
  
  boolean isRound(Object paramObject);
  
  WindowInsetsCompat replaceSystemWindowInsets(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  WindowInsetsCompat replaceSystemWindowInsets(Object paramObject, Rect paramRect);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\WindowInsetsCompat$WindowInsetsCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */