package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

interface AccessibilityDelegateCompat$AccessibilityDelegateImpl {
  boolean dispatchPopulateAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  AccessibilityNodeProviderCompat getAccessibilityNodeProvider(Object paramObject, View paramView);
  
  Object newAccessiblityDelegateBridge(AccessibilityDelegateCompat paramAccessibilityDelegateCompat);
  
  Object newAccessiblityDelegateDefaultImpl();
  
  void onInitializeAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  void onInitializeAccessibilityNodeInfo(Object paramObject, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat);
  
  void onPopulateAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  boolean onRequestSendAccessibilityEvent(Object paramObject, ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  boolean performAccessibilityAction(Object paramObject, View paramView, int paramInt, Bundle paramBundle);
  
  void sendAccessibilityEvent(Object paramObject, View paramView, int paramInt);
  
  void sendAccessibilityEventUnchecked(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AccessibilityDelegateCompat$AccessibilityDelegateImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */