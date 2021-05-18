package android.support.v4.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

@TargetApi(14)
@RequiresApi(14)
class AccessibilityDelegateCompatIcs {
  public static boolean dispatchPopulateAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    return ((View.AccessibilityDelegate)paramObject).dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public static Object newAccessibilityDelegateBridge(AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge paramAccessibilityDelegateCompatIcs$AccessibilityDelegateBridge) {
    return new AccessibilityDelegateCompatIcs$1(paramAccessibilityDelegateCompatIcs$AccessibilityDelegateBridge);
  }
  
  public static Object newAccessibilityDelegateDefaultImpl() {
    return new View.AccessibilityDelegate();
  }
  
  public static void onInitializeAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    ((View.AccessibilityDelegate)paramObject).onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public static void onInitializeAccessibilityNodeInfo(Object paramObject1, View paramView, Object paramObject2) {
    ((View.AccessibilityDelegate)paramObject1).onInitializeAccessibilityNodeInfo(paramView, (AccessibilityNodeInfo)paramObject2);
  }
  
  public static void onPopulateAccessibilityEvent(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    ((View.AccessibilityDelegate)paramObject).onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public static boolean onRequestSendAccessibilityEvent(Object paramObject, ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    return ((View.AccessibilityDelegate)paramObject).onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public static void sendAccessibilityEvent(Object paramObject, View paramView, int paramInt) {
    ((View.AccessibilityDelegate)paramObject).sendAccessibilityEvent(paramView, paramInt);
  }
  
  public static void sendAccessibilityEventUnchecked(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent) {
    ((View.AccessibilityDelegate)paramObject).sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AccessibilityDelegateCompatIcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */