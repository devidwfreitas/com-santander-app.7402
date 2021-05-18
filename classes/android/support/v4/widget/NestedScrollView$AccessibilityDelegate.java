package android.support.v4.widget;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ScrollView;

class NestedScrollView$AccessibilityDelegate extends AccessibilityDelegateCompat {
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {
    boolean bool;
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    NestedScrollView nestedScrollView = (NestedScrollView)paramView;
    paramAccessibilityEvent.setClassName(ScrollView.class.getName());
    AccessibilityRecordCompat accessibilityRecordCompat = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
    if (nestedScrollView.getScrollRange() > 0) {
      bool = true;
    } else {
      bool = false;
    } 
    accessibilityRecordCompat.setScrollable(bool);
    accessibilityRecordCompat.setScrollX(nestedScrollView.getScrollX());
    accessibilityRecordCompat.setScrollY(nestedScrollView.getScrollY());
    accessibilityRecordCompat.setMaxScrollX(nestedScrollView.getScrollX());
    accessibilityRecordCompat.setMaxScrollY(nestedScrollView.getScrollRange());
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    NestedScrollView nestedScrollView = (NestedScrollView)paramView;
    paramAccessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
    if (nestedScrollView.isEnabled()) {
      int i = nestedScrollView.getScrollRange();
      if (i > 0) {
        paramAccessibilityNodeInfoCompat.setScrollable(true);
        if (nestedScrollView.getScrollY() > 0)
          paramAccessibilityNodeInfoCompat.addAction(8192); 
        if (nestedScrollView.getScrollY() < i)
          paramAccessibilityNodeInfoCompat.addAction(4096); 
      } 
    } 
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle) {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle))
      return true; 
    NestedScrollView nestedScrollView = (NestedScrollView)paramView;
    if (!nestedScrollView.isEnabled())
      return false; 
    switch (paramInt) {
      default:
        return false;
      case 4096:
        paramInt = Math.min(nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom() - nestedScrollView.getPaddingTop() + nestedScrollView.getScrollY(), nestedScrollView.getScrollRange());
        if (paramInt != nestedScrollView.getScrollY()) {
          nestedScrollView.smoothScrollTo(0, paramInt);
          return true;
        } 
        return false;
      case 8192:
        break;
    } 
    paramInt = nestedScrollView.getHeight();
    int i = nestedScrollView.getPaddingBottom();
    int j = nestedScrollView.getPaddingTop();
    paramInt = Math.max(nestedScrollView.getScrollY() - paramInt - i - j, 0);
    if (paramInt != nestedScrollView.getScrollY()) {
      nestedScrollView.smoothScrollTo(0, paramInt);
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\NestedScrollView$AccessibilityDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */