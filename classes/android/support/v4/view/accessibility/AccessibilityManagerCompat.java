package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

public final class AccessibilityManagerCompat {
  private static final AccessibilityManagerCompat$AccessibilityManagerVersionImpl IMPL = new AccessibilityManagerCompat$AccessibilityManagerStubImpl();
  
  public static boolean addAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$AccessibilityStateChangeListener paramAccessibilityManagerCompat$AccessibilityStateChangeListener) {
    return IMPL.addAccessibilityStateChangeListener(paramAccessibilityManager, paramAccessibilityManagerCompat$AccessibilityStateChangeListener);
  }
  
  public static boolean addTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$TouchExplorationStateChangeListener paramAccessibilityManagerCompat$TouchExplorationStateChangeListener) {
    return IMPL.addTouchExplorationStateChangeListener(paramAccessibilityManager, paramAccessibilityManagerCompat$TouchExplorationStateChangeListener);
  }
  
  public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager, int paramInt) {
    return IMPL.getEnabledAccessibilityServiceList(paramAccessibilityManager, paramInt);
  }
  
  public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager) {
    return IMPL.getInstalledAccessibilityServiceList(paramAccessibilityManager);
  }
  
  public static boolean isTouchExplorationEnabled(AccessibilityManager paramAccessibilityManager) {
    return IMPL.isTouchExplorationEnabled(paramAccessibilityManager);
  }
  
  public static boolean removeAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$AccessibilityStateChangeListener paramAccessibilityManagerCompat$AccessibilityStateChangeListener) {
    return IMPL.removeAccessibilityStateChangeListener(paramAccessibilityManager, paramAccessibilityManagerCompat$AccessibilityStateChangeListener);
  }
  
  public static boolean removeTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat$TouchExplorationStateChangeListener paramAccessibilityManagerCompat$TouchExplorationStateChangeListener) {
    return IMPL.removeTouchExplorationStateChangeListener(paramAccessibilityManager, paramAccessibilityManagerCompat$TouchExplorationStateChangeListener);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 19) {
      IMPL = new AccessibilityManagerCompat$AccessibilityManagerKitKatImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new AccessibilityManagerCompat$AccessibilityManagerIcsImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityManagerCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */