package android.support.v4.view;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl extends AccessibilityDelegateCompat$AccessibilityDelegateStubImpl {
  public boolean dispatchPopulateAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    return AccessibilityDelegateCompatIcs.dispatchPopulateAccessibilityEvent(paramObject, paramView, paramAccessibilityEvent);
  }
  
  public Object newAccessiblityDelegateBridge(AccessibilityDelegateCompat paramAccessibilityDelegateCompat) {
    return AccessibilityDelegateCompatIcs.newAccessibilityDelegateBridge(new AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1(this, paramAccessibilityDelegateCompat));
  }
  
  public Object newAccessiblityDelegateDefaultImpl() {
    return AccessibilityDelegateCompatIcs.newAccessibilityDelegateDefaultImpl();
  }
  
  public void onInitializeAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    AccessibilityDelegateCompatIcs.onInitializeAccessibilityEvent(paramObject, paramView, paramAccessibilityEvent);
  }
  
  public void onInitializeAccessibilityNodeInfo(Object paramObject, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    AccessibilityDelegateCompatIcs.onInitializeAccessibilityNodeInfo(paramObject, paramView, paramAccessibilityNodeInfoCompat.getInfo());
  }
  
  public void onPopulateAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    AccessibilityDelegateCompatIcs.onPopulateAccessibilityEvent(paramObject, paramView, paramAccessibilityEvent);
  }
  
  public boolean onRequestSendAccessibilityEvent(Object paramObject, ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    return AccessibilityDelegateCompatIcs.onRequestSendAccessibilityEvent(paramObject, paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public void sendAccessibilityEvent(Object paramObject, View paramView, int paramInt) {
    AccessibilityDelegateCompatIcs.sendAccessibilityEvent(paramObject, paramView, paramInt);
  }
  
  public void sendAccessibilityEventUnchecked(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    AccessibilityDelegateCompatIcs.sendAccessibilityEventUnchecked(paramObject, paramView, paramAccessibilityEvent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */