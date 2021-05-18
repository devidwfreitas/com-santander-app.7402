package android.support.v4.view.accessibility;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityManager;

@TargetApi(19)
@RequiresApi(19)
class AccessibilityManagerCompatKitKat {
  public static boolean addTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, Object paramObject) {
    return paramAccessibilityManager.addTouchExplorationStateChangeListener((AccessibilityManager.TouchExplorationStateChangeListener)paramObject);
  }
  
  public static Object newTouchExplorationStateChangeListener(AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge paramAccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge) {
    return new AccessibilityManagerCompatKitKat$1(paramAccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge);
  }
  
  public static boolean removeTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, Object paramObject) {
    return paramAccessibilityManager.removeTouchExplorationStateChangeListener((AccessibilityManager.TouchExplorationStateChangeListener)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityManagerCompatKitKat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */