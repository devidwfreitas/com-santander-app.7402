package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;

class ViewParentCompat$ViewParentCompatStubImpl implements ViewParentCompat$ViewParentCompatImpl {
  public void notifySubtreeAccessibilityStateChanged(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt) {}
  
  public boolean onNestedFling(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean) {
    return (paramViewParent instanceof NestedScrollingParent) ? ((NestedScrollingParent)paramViewParent).onNestedFling(paramView, paramFloat1, paramFloat2, paramBoolean) : false;
  }
  
  public boolean onNestedPreFling(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2) {
    return (paramViewParent instanceof NestedScrollingParent) ? ((NestedScrollingParent)paramViewParent).onNestedPreFling(paramView, paramFloat1, paramFloat2) : false;
  }
  
  public void onNestedPreScroll(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfint) {
    if (paramViewParent instanceof NestedScrollingParent)
      ((NestedScrollingParent)paramViewParent).onNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfint); 
  }
  
  public void onNestedScroll(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (paramViewParent instanceof NestedScrollingParent)
      ((NestedScrollingParent)paramViewParent).onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4); 
  }
  
  public void onNestedScrollAccepted(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt) {
    if (paramViewParent instanceof NestedScrollingParent)
      ((NestedScrollingParent)paramViewParent).onNestedScrollAccepted(paramView1, paramView2, paramInt); 
  }
  
  public boolean onStartNestedScroll(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt) {
    return (paramViewParent instanceof NestedScrollingParent) ? ((NestedScrollingParent)paramViewParent).onStartNestedScroll(paramView1, paramView2, paramInt) : false;
  }
  
  public void onStopNestedScroll(ViewParent paramViewParent, View paramView) {
    if (paramViewParent instanceof NestedScrollingParent)
      ((NestedScrollingParent)paramViewParent).onStopNestedScroll(paramView); 
  }
  
  public boolean requestSendAccessibilityEvent(ViewParent paramViewParent, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    if (paramView == null)
      return false; 
    ((AccessibilityManager)paramView.getContext().getSystemService("accessibility")).sendAccessibilityEvent(paramAccessibilityEvent);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewParentCompat$ViewParentCompatStubImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */