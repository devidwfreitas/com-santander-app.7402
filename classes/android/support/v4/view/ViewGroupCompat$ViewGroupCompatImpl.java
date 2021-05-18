package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

interface ViewGroupCompat$ViewGroupCompatImpl {
  int getLayoutMode(ViewGroup paramViewGroup);
  
  int getNestedScrollAxes(ViewGroup paramViewGroup);
  
  boolean isTransitionGroup(ViewGroup paramViewGroup);
  
  boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  void setLayoutMode(ViewGroup paramViewGroup, int paramInt);
  
  void setMotionEventSplittingEnabled(ViewGroup paramViewGroup, boolean paramBoolean);
  
  void setTransitionGroup(ViewGroup paramViewGroup, boolean paramBoolean);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewGroupCompat$ViewGroupCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */