package android.support.v4.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;

public final class AccessibilityServiceInfoCompat {
  public static final int CAPABILITY_CAN_FILTER_KEY_EVENTS = 8;
  
  public static final int CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 4;
  
  public static final int CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION = 2;
  
  public static final int CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT = 1;
  
  public static final int DEFAULT = 1;
  
  public static final int FEEDBACK_ALL_MASK = -1;
  
  public static final int FEEDBACK_BRAILLE = 32;
  
  public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 2;
  
  public static final int FLAG_REPORT_VIEW_IDS = 16;
  
  public static final int FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 8;
  
  public static final int FLAG_REQUEST_FILTER_KEY_EVENTS = 32;
  
  public static final int FLAG_REQUEST_TOUCH_EXPLORATION_MODE = 4;
  
  private static final AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl IMPL = new AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl();
  
  public static String capabilityToString(int paramInt) {
    switch (paramInt) {
      default:
        return "UNKNOWN";
      case 1:
        return "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT";
      case 2:
        return "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION";
      case 4:
        return "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
      case 8:
        break;
    } 
    return "CAPABILITY_CAN_FILTER_KEY_EVENTS";
  }
  
  public static String feedbackTypeToString(int paramInt) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("[");
    while (paramInt > 0) {
      int i = 1 << Integer.numberOfTrailingZeros(paramInt);
      paramInt &= i ^ 0xFFFFFFFF;
      if (stringBuilder.length() > 1)
        stringBuilder.append(", "); 
      switch (i) {
        default:
          continue;
        case 1:
          stringBuilder.append("FEEDBACK_SPOKEN");
          continue;
        case 4:
          stringBuilder.append("FEEDBACK_AUDIBLE");
          continue;
        case 2:
          stringBuilder.append("FEEDBACK_HAPTIC");
          continue;
        case 16:
          stringBuilder.append("FEEDBACK_GENERIC");
          continue;
        case 8:
          break;
      } 
      stringBuilder.append("FEEDBACK_VISUAL");
    } 
    stringBuilder.append("]");
    return stringBuilder.toString();
  }
  
  public static String flagToString(int paramInt) {
    switch (paramInt) {
      default:
        return null;
      case 1:
        return "DEFAULT";
      case 2:
        return "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS";
      case 4:
        return "FLAG_REQUEST_TOUCH_EXPLORATION_MODE";
      case 8:
        return "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
      case 16:
        return "FLAG_REPORT_VIEW_IDS";
      case 32:
        break;
    } 
    return "FLAG_REQUEST_FILTER_KEY_EVENTS";
  }
  
  public static boolean getCanRetrieveWindowContent(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return IMPL.getCanRetrieveWindowContent(paramAccessibilityServiceInfo);
  }
  
  public static int getCapabilities(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return IMPL.getCapabilities(paramAccessibilityServiceInfo);
  }
  
  public static String getDescription(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return IMPL.getDescription(paramAccessibilityServiceInfo);
  }
  
  public static String getId(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return IMPL.getId(paramAccessibilityServiceInfo);
  }
  
  public static ResolveInfo getResolveInfo(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return IMPL.getResolveInfo(paramAccessibilityServiceInfo);
  }
  
  public static String getSettingsActivityName(AccessibilityServiceInfo paramAccessibilityServiceInfo) {
    return IMPL.getSettingsActivityName(paramAccessibilityServiceInfo);
  }
  
  public static String loadDescription(AccessibilityServiceInfo paramAccessibilityServiceInfo, PackageManager paramPackageManager) {
    return IMPL.loadDescription(paramAccessibilityServiceInfo, paramPackageManager);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 18) {
      IMPL = new AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2Impl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 16) {
      IMPL = new AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\accessibilityservice\AccessibilityServiceInfoCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */