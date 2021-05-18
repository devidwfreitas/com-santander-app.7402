package android.support.v4.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;

interface AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl {
  boolean getCanRetrieveWindowContent(AccessibilityServiceInfo paramAccessibilityServiceInfo);
  
  int getCapabilities(AccessibilityServiceInfo paramAccessibilityServiceInfo);
  
  String getDescription(AccessibilityServiceInfo paramAccessibilityServiceInfo);
  
  String getId(AccessibilityServiceInfo paramAccessibilityServiceInfo);
  
  ResolveInfo getResolveInfo(AccessibilityServiceInfo paramAccessibilityServiceInfo);
  
  String getSettingsActivityName(AccessibilityServiceInfo paramAccessibilityServiceInfo);
  
  String loadDescription(AccessibilityServiceInfo paramAccessibilityServiceInfo, PackageManager paramPackageManager);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\accessibilityservice\AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */