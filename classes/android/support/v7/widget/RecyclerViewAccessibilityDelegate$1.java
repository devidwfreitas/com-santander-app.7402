package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;

class RecyclerViewAccessibilityDelegate$1 extends AccessibilityDelegateCompat {
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    if (!RecyclerViewAccessibilityDelegate.this.shouldIgnore() && RecyclerViewAccessibilityDelegate.this.mRecyclerView.getLayoutManager() != null)
      RecyclerViewAccessibilityDelegate.this.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(paramView, paramAccessibilityNodeInfoCompat); 
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle) {
    return super.performAccessibilityAction(paramView, paramInt, paramBundle) ? true : ((!RecyclerViewAccessibilityDelegate.this.shouldIgnore() && RecyclerViewAccessibilityDelegate.this.mRecyclerView.getLayoutManager() != null) ? RecyclerViewAccessibilityDelegate.this.mRecyclerView.getLayoutManager().performAccessibilityActionForItem(paramView, paramInt, paramBundle) : false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerViewAccessibilityDelegate$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */