package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityManager;

class AccessibilityManagerCompat$AccessibilityManagerKitKatImpl extends AccessibilityManagerCompat$AccessibilityManagerIcsImpl {
  public boolean addTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$TouchExplorationStateChangeListener paramAccessibilityManagerCompat$TouchExplorationStateChangeListener) {
    return AccessibilityManagerCompatKitKat.addTouchExplorationStateChangeListener(paramAccessibilityManager, newTouchExplorationStateChangeListener(paramAccessibilityManagerCompat$TouchExplorationStateChangeListener));
  }
  
  public AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper newTouchExplorationStateChangeListener(AccessibilityManagerCompat$TouchExplorationStateChangeListener paramAccessibilityManagerCompat$TouchExplorationStateChangeListener) {
    return new AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper(paramAccessibilityManagerCompat$TouchExplorationStateChangeListener, new AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1(this, paramAccessibilityManagerCompat$TouchExplorationStateChangeListener));
  }
  
  public boolean removeTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$TouchExplorationStateChangeListener paramAccessibilityManagerCompat$TouchExplorationStateChangeListener) {
    return AccessibilityManagerCompatKitKat.removeTouchExplorationStateChangeListener(paramAccessibilityManager, newTouchExplorationStateChangeListener(paramAccessibilityManagerCompat$TouchExplorationStateChangeListener));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityManagerCompat$AccessibilityManagerKitKatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */