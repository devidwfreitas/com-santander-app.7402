package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

@TargetApi(14)
@RequiresApi(14)
class AccessibilityManagerCompatIcs {
  public static boolean addAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper paramAccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper) {
    return paramAccessibilityManager.addAccessibilityStateChangeListener(paramAccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper);
  }
  
  public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager, int paramInt) {
    return paramAccessibilityManager.getEnabledAccessibilityServiceList(paramInt);
  }
  
  public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager) {
    return paramAccessibilityManager.getInstalledAccessibilityServiceList();
  }
  
  public static boolean isTouchExplorationEnabled(AccessibilityManager paramAccessibilityManager) {
    return paramAccessibilityManager.isTouchExplorationEnabled();
  }
  
  public static boolean removeAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper paramAccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper) {
    return paramAccessibilityManager.removeAccessibilityStateChangeListener(paramAccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityManagerCompatIcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */