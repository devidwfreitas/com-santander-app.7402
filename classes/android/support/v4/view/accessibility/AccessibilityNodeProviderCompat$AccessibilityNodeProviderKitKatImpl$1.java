package android.support.v4.view.accessibility;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

class AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1 implements AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge {
  public Object createAccessibilityNodeInfo(int paramInt) {
    AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = compat.createAccessibilityNodeInfo(paramInt);
    return (accessibilityNodeInfoCompat == null) ? null : accessibilityNodeInfoCompat.getInfo();
  }
  
  public List<Object> findAccessibilityNodeInfosByText(String paramString, int paramInt) {
    List<AccessibilityNodeInfoCompat> list = compat.findAccessibilityNodeInfosByText(paramString, paramInt);
    if (list == null)
      return null; 
    ArrayList<Object> arrayList = new ArrayList();
    int i = list.size();
    for (paramInt = 0; paramInt < i; paramInt++)
      arrayList.add(((AccessibilityNodeInfoCompat)list.get(paramInt)).getInfo()); 
    return arrayList;
  }
  
  public Object findFocus(int paramInt) {
    AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = compat.findFocus(paramInt);
    return (accessibilityNodeInfoCompat == null) ? null : accessibilityNodeInfoCompat.getInfo();
  }
  
  public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle) {
    return compat.performAction(paramInt1, paramInt2, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */