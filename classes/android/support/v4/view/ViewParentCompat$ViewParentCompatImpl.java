package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

interface ViewParentCompat$ViewParentCompatImpl {
  void notifySubtreeAccessibilityStateChanged(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt);
  
  boolean onNestedFling(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean);
  
  boolean onNestedPreFling(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2);
  
  void onNestedPreScroll(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfint);
  
  void onNestedScroll(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  void onNestedScrollAccepted(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt);
  
  boolean onStartNestedScroll(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt);
  
  void onStopNestedScroll(ViewParent paramViewParent, View paramView);
  
  boolean requestSendAccessibilityEvent(ViewParent paramViewParent, View paramView, AccessibilityEvent paramAccessibilityEvent);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewParentCompat$ViewParentCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */