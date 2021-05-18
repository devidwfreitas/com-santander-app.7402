package android.support.design.internal;

import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;

class NavigationMenuItemView$1 extends AccessibilityDelegateCompat {
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.mCheckable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\NavigationMenuItemView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */