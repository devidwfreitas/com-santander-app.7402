package android.support.v4.view;

import android.os.Build;

public final class ScaleGestureDetectorCompat {
  static final ScaleGestureDetectorCompat$ScaleGestureDetectorImpl IMPL = new ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl();
  
  public static boolean isQuickScaleEnabled(Object paramObject) {
    return IMPL.isQuickScaleEnabled(paramObject);
  }
  
  public static void setQuickScaleEnabled(Object paramObject, boolean paramBoolean) {
    IMPL.setQuickScaleEnabled(paramObject, paramBoolean);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 19) {
      IMPL = new ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ScaleGestureDetectorCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */