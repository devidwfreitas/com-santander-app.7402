package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

class ViewPager$MyAccessibilityDelegate extends AccessibilityDelegateCompat {
  private boolean canScroll() {
    return (ViewPager.this.mAdapter != null && ViewPager.this.mAdapter.getCount() > 1);
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    AccessibilityRecordCompat accessibilityRecordCompat = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
    accessibilityRecordCompat.setScrollable(canScroll());
    if (paramAccessibilityEvent.getEventType() == 4096 && ViewPager.this.mAdapter != null) {
      accessibilityRecordCompat.setItemCount(ViewPager.this.mAdapter.getCount());
      accessibilityRecordCompat.setFromIndex(ViewPager.this.mCurItem);
      accessibilityRecordCompat.setToIndex(ViewPager.this.mCurItem);
    } 
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
    paramAccessibilityNodeInfoCompat.setScrollable(canScroll());
    if (ViewPager.this.canScrollHorizontally(1))
      paramAccessibilityNodeInfoCompat.addAction(4096); 
    if (ViewPager.this.canScrollHorizontally(-1))
      paramAccessibilityNodeInfoCompat.addAction(8192); 
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle) {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle))
      return true; 
    switch (paramInt) {
      default:
        return false;
      case 4096:
        if (ViewPager.this.canScrollHorizontally(1)) {
          ViewPager.this.setCurrentItem(ViewPager.this.mCurItem + 1);
          return true;
        } 
        return false;
      case 8192:
        break;
    } 
    if (ViewPager.this.canScrollHorizontally(-1)) {
      ViewPager.this.setCurrentItem(ViewPager.this.mCurItem - 1);
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPager$MyAccessibilityDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */