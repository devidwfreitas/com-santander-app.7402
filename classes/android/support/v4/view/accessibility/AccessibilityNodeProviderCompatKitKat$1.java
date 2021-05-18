package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

final class AccessibilityNodeProviderCompatKitKat$1 extends AccessibilityNodeProvider {
  public AccessibilityNodeInfo createAccessibilityNodeInfo(int paramInt) {
    return (AccessibilityNodeInfo)bridge.createAccessibilityNodeInfo(paramInt);
  }
  
  public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramString, int paramInt) {
    return (List)bridge.findAccessibilityNodeInfosByText(paramString, paramInt);
  }
  
  public AccessibilityNodeInfo findFocus(int paramInt) {
    return (AccessibilityNodeInfo)bridge.findFocus(paramInt);
  }
  
  public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle) {
    return bridge.performAction(paramInt1, paramInt2, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityNodeProviderCompatKitKat$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */