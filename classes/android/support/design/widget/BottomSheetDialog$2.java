package android.support.design.widget;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;

class BottomSheetDialog$2 extends AccessibilityDelegateCompat {
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    if (BottomSheetDialog.this.mCancelable) {
      paramAccessibilityNodeInfoCompat.addAction(1048576);
      paramAccessibilityNodeInfoCompat.setDismissable(true);
      return;
    } 
    paramAccessibilityNodeInfoCompat.setDismissable(false);
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle) {
    if (paramInt == 1048576 && BottomSheetDialog.this.mCancelable) {
      BottomSheetDialog.this.cancel();
      return true;
    } 
    return super.performAccessibilityAction(paramView, paramInt, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BottomSheetDialog$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */