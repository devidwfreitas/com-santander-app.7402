package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

class AccessibilityManagerCompat$AccessibilityManagerIcsImpl extends AccessibilityManagerCompat$AccessibilityManagerStubImpl {
  public boolean addAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$AccessibilityStateChangeListener paramAccessibilityManagerCompat$AccessibilityStateChangeListener) {
    return AccessibilityManagerCompatIcs.addAccessibilityStateChangeListener(paramAccessibilityManager, newAccessibilityStateChangeListener(paramAccessibilityManagerCompat$AccessibilityStateChangeListener));
  }
  
  public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager, int paramInt) {
    return AccessibilityManagerCompatIcs.getEnabledAccessibilityServiceList(paramAccessibilityManager, paramInt);
  }
  
  public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager) {
    return AccessibilityManagerCompatIcs.getInstalledAccessibilityServiceList(paramAccessibilityManager);
  }
  
  public boolean isTouchExplorationEnabled(AccessibilityManager paramAccessibilityManager) {
    return AccessibilityManagerCompatIcs.isTouchExplorationEnabled(paramAccessibilityManager);
  }
  
  public AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper newAccessibilityStateChangeListener(AccessibilityManagerCompat$AccessibilityStateChangeListener paramAccessibilityManagerCompat$AccessibilityStateChangeListener) {
    return new AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper(paramAccessibilityManagerCompat$AccessibilityStateChangeListener, new AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1(this, paramAccessibilityManagerCompat$AccessibilityStateChangeListener));
  }
  
  public boolean removeAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$AccessibilityStateChangeListener paramAccessibilityManagerCompat$AccessibilityStateChangeListener) {
    return AccessibilityManagerCompatIcs.removeAccessibilityStateChangeListener(paramAccessibilityManager, newAccessibilityStateChangeListener(paramAccessibilityManagerCompat$AccessibilityStateChangeListener));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityManagerCompat$AccessibilityManagerIcsImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */