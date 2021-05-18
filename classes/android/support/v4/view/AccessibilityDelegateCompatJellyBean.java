package android.support.v4.view;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.view.View;

@TargetApi(16)
@RequiresApi(16)
class AccessibilityDelegateCompatJellyBean {
  public static Object getAccessibilityNodeProvider(Object paramObject, View paramView) {
    return ((View.AccessibilityDelegate)paramObject).getAccessibilityNodeProvider(paramView);
  }
  
  public static Object newAccessibilityDelegateBridge(AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean paramAccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean) {
    return new AccessibilityDelegateCompatJellyBean$1(paramAccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean);
  }
  
  public static boolean performAccessibilityAction(Object paramObject, View paramView, int paramInt, Bundle paramBundle) {
    return ((View.AccessibilityDelegate)paramObject).performAccessibilityAction(paramView, paramInt, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AccessibilityDelegateCompatJellyBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */