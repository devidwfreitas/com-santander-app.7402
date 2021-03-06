package android.support.v4.view;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public final class ViewGroupCompat {
  static final ViewGroupCompat$ViewGroupCompatImpl IMPL = new ViewGroupCompat$ViewGroupCompatStubImpl();
  
  public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
  
  public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;
  
  public static int getLayoutMode(ViewGroup paramViewGroup) {
    return IMPL.getLayoutMode(paramViewGroup);
  }
  
  public static int getNestedScrollAxes(ViewGroup paramViewGroup) {
    return IMPL.getNestedScrollAxes(paramViewGroup);
  }
  
  public static boolean isTransitionGroup(ViewGroup paramViewGroup) {
    return IMPL.isTransitionGroup(paramViewGroup);
  }
  
  public static boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    return IMPL.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public static void setLayoutMode(ViewGroup paramViewGroup, int paramInt) {
    IMPL.setLayoutMode(paramViewGroup, paramInt);
  }
  
  public static void setMotionEventSplittingEnabled(ViewGroup paramViewGroup, boolean paramBoolean) {
    IMPL.setMotionEventSplittingEnabled(paramViewGroup, paramBoolean);
  }
  
  public static void setTransitionGroup(ViewGroup paramViewGroup, boolean paramBoolean) {
    IMPL.setTransitionGroup(paramViewGroup, paramBoolean);
  }
  
  static {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21) {
      IMPL = new ViewGroupCompat$ViewGroupCompatLollipopImpl();
      return;
    } 
    if (i >= 18) {
      IMPL = new ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl();
      return;
    } 
    if (i >= 14) {
      IMPL = new ViewGroupCompat$ViewGroupCompatIcsImpl();
      return;
    } 
    if (i >= 11) {
      IMPL = new ViewGroupCompat$ViewGroupCompatHCImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewGroupCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */