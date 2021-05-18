package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.view.accessibility.AccessibilityManager;
import java.util.Collections;
import java.util.List;

class AccessibilityManagerCompat$AccessibilityManagerStubImpl implements AccessibilityManagerCompat$AccessibilityManagerVersionImpl {
  public boolean addAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$AccessibilityStateChangeListener paramAccessibilityManagerCompat$AccessibilityStateChangeListener) {
    return false;
  }
  
  public boolean addTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$TouchExplorationStateChangeListener paramAccessibilityManagerCompat$TouchExplorationStateChangeListener) {
    return false;
  }
  
  public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager, int paramInt) {
    return Collections.emptyList();
  }
  
  public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager) {
    return Collections.emptyList();
  }
  
  public boolean isTouchExplorationEnabled(AccessibilityManager paramAccessibilityManager) {
    return false;
  }
  
  public AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper newAccessibilityStateChangeListener(AccessibilityManagerCompat$AccessibilityStateChangeListener paramAccessibilityManagerCompat$AccessibilityStateChangeListener) {
    return null;
  }
  
  public AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper newTouchExplorationStateChangeListener(AccessibilityManagerCompat$TouchExplorationStateChangeListener paramAccessibilityManagerCompat$TouchExplorationStateChangeListener) {
    return null;
  }
  
  public boolean removeAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$AccessibilityStateChangeListener paramAccessibilityManagerCompat$AccessibilityStateChangeListener) {
    return false;
  }
  
  public boolean removeTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$TouchExplorationStateChangeListener paramAccessibilityManagerCompat$TouchExplorationStateChangeListener) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityManagerCompat$AccessibilityManagerStubImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */