package android.support.v4.widget;

import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;

final class DrawerLayout$ChildAccessibilityDelegate extends AccessibilityDelegateCompat {
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    if (!DrawerLayout.includeChildForAccessibility(paramView))
      paramAccessibilityNodeInfoCompat.setParent(null); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\DrawerLayout$ChildAccessibilityDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */