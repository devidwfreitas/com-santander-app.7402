package android.support.v4.widget;

import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;

class ExploreByTouchHelper$MyNodeProvider extends AccessibilityNodeProviderCompat {
  public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int paramInt) {
    return AccessibilityNodeInfoCompat.obtain(ExploreByTouchHelper.this.obtainAccessibilityNodeInfo(paramInt));
  }
  
  public AccessibilityNodeInfoCompat findFocus(int paramInt) {
    if (paramInt == 2) {
      paramInt = ExploreByTouchHelper.access$000(ExploreByTouchHelper.this);
    } else {
      paramInt = ExploreByTouchHelper.access$100(ExploreByTouchHelper.this);
    } 
    return (paramInt == Integer.MIN_VALUE) ? null : createAccessibilityNodeInfo(paramInt);
  }
  
  public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle) {
    return ExploreByTouchHelper.this.performAction(paramInt1, paramInt2, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\ExploreByTouchHelper$MyNodeProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */