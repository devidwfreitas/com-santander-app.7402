package android.support.v4.view.accessibility;

import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.List;

public class AccessibilityNodeProviderCompat {
  public static final int HOST_VIEW_ID = -1;
  
  private static final AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl IMPL = new AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl();
  
  private final Object mProvider = IMPL.newAccessibilityNodeProviderBridge(this);
  
  public AccessibilityNodeProviderCompat() {}
  
  public AccessibilityNodeProviderCompat(Object paramObject) {}
  
  @Nullable
  public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int paramInt) {
    return null;
  }
  
  @Nullable
  public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String paramString, int paramInt) {
    return null;
  }
  
  @Nullable
  public AccessibilityNodeInfoCompat findFocus(int paramInt) {
    return null;
  }
  
  public Object getProvider() {
    return this.mProvider;
  }
  
  public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle) {
    return false;
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 19) {
      IMPL = new AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 16) {
      IMPL = new AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityNodeProviderCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */