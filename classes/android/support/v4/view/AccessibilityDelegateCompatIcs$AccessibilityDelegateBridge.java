package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public interface AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge {
  boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  void onInitializeAccessibilityNodeInfo(View paramView, Object paramObject);
  
  void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  void sendAccessibilityEvent(View paramView, int paramInt);
  
  void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */