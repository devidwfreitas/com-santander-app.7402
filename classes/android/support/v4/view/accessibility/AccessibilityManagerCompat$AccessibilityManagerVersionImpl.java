package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

interface AccessibilityManagerCompat$AccessibilityManagerVersionImpl {
  boolean addAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$AccessibilityStateChangeListener paramAccessibilityManagerCompat$AccessibilityStateChangeListener);
  
  boolean addTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$TouchExplorationStateChangeListener paramAccessibilityManagerCompat$TouchExplorationStateChangeListener);
  
  List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager, int paramInt);
  
  List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager);
  
  boolean isTouchExplorationEnabled(AccessibilityManager paramAccessibilityManager);
  
  AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper newAccessibilityStateChangeListener(AccessibilityManagerCompat$AccessibilityStateChangeListener paramAccessibilityManagerCompat$AccessibilityStateChangeListener);
  
  AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper newTouchExplorationStateChangeListener(AccessibilityManagerCompat$TouchExplorationStateChangeListener paramAccessibilityManagerCompat$TouchExplorationStateChangeListener);
  
  boolean removeAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$AccessibilityStateChangeListener paramAccessibilityManagerCompat$AccessibilityStateChangeListener);
  
  boolean removeTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$TouchExplorationStateChangeListener paramAccessibilityManagerCompat$TouchExplorationStateChangeListener);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityManagerCompat$AccessibilityManagerVersionImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */