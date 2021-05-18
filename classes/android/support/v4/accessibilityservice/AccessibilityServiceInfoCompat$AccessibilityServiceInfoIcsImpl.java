package android.support.v4.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.ResolveInfo;

class AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl extends AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl {
  public boolean getCanRetrieveWindowContent(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return AccessibilityServiceInfoCompatIcs.getCanRetrieveWindowContent(paramAccessibilityServiceInfo);
  }
  
  public int getCapabilities(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return getCanRetrieveWindowContent(paramAccessibilityServiceInfo) ? 1 : 0;
  }
  
  public String getDescription(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return AccessibilityServiceInfoCompatIcs.getDescription(paramAccessibilityServiceInfo);
  }
  
  public String getId(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return AccessibilityServiceInfoCompatIcs.getId(paramAccessibilityServiceInfo);
  }
  
  public ResolveInfo getResolveInfo(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return AccessibilityServiceInfoCompatIcs.getResolveInfo(paramAccessibilityServiceInfo);
  }
  
  public String getSettingsActivityName(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return AccessibilityServiceInfoCompatIcs.getSettingsActivityName(paramAccessibilityServiceInfo);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\accessibilityservice\AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */