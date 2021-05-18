package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1 implements AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean {
  public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {
    return compat.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public Object getAccessibilityNodeProvider(View paramView) {
    AccessibilityNodeProviderCompat accessibilityNodeProviderCompat = compat.getAccessibilityNodeProvider(paramView);
    return (accessibilityNodeProviderCompat != null) ? accessibilityNodeProviderCompat.getProvider() : null;
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {
    compat.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, Object paramObject) {
    compat.onInitializeAccessibilityNodeInfo(paramView, new AccessibilityNodeInfoCompat(paramObject));
  }
  
  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {
    compat.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    return compat.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle) {
    return compat.performAccessibilityAction(paramView, paramInt, paramBundle);
  }
  
  public void sendAccessibilityEvent(View paramView, int paramInt) {
    compat.sendAccessibilityEvent(paramView, paramInt);
  }
  
  public void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent) {
    compat.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */