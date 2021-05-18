package android.support.v4.view;

import android.os.Build;
import android.view.ViewGroup;

public final class MarginLayoutParamsCompat {
  static final MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl IMPL = new MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase();
  
  public static int getLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    int j = IMPL.getLayoutDirection(paramMarginLayoutParams);
    int i = j;
    if (j != 0) {
      i = j;
      if (j != 1)
        i = 0; 
    } 
    return i;
  }
  
  public static int getMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    return IMPL.getMarginEnd(paramMarginLayoutParams);
  }
  
  public static int getMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    return IMPL.getMarginStart(paramMarginLayoutParams);
  }
  
  public static boolean isMarginRelative(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    return IMPL.isMarginRelative(paramMarginLayoutParams);
  }
  
  public static void resolveLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt) {
    IMPL.resolveLayoutDirection(paramMarginLayoutParams, paramInt);
  }
  
  public static void setLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt) {
    IMPL.setLayoutDirection(paramMarginLayoutParams, paramInt);
  }
  
  public static void setMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt) {
    IMPL.setMarginEnd(paramMarginLayoutParams, paramInt);
  }
  
  public static void setMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt) {
    IMPL.setMarginStart(paramMarginLayoutParams, paramInt);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 17) {
      IMPL = new MarginLayoutParamsCompat$MarginLayoutParamsCompatImplJbMr1();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\MarginLayoutParamsCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */