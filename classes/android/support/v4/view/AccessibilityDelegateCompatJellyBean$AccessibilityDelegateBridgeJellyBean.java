package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public interface AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean {
  boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  Object getAccessibilityNodeProvider(View paramView);
  
  void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  void onInitializeAccessibilityNodeInfo(View paramView, Object paramObject);
  
  void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle);
  
  void sendAccessibilityEvent(View paramView, int paramInt);
  
  void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */