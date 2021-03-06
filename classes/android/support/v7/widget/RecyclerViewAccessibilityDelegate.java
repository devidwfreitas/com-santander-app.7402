package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public class RecyclerViewAccessibilityDelegate extends AccessibilityDelegateCompat {
  final AccessibilityDelegateCompat mItemDelegate = new RecyclerViewAccessibilityDelegate$1(this);
  
  final RecyclerView mRecyclerView;
  
  public RecyclerViewAccessibilityDelegate(RecyclerView paramRecyclerView) {
    this.mRecyclerView = paramRecyclerView;
  }
  
  public AccessibilityDelegateCompat getItemDelegate() {
    return this.mItemDelegate;
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if (paramView instanceof RecyclerView && !shouldIgnore()) {
      RecyclerView recyclerView = (RecyclerView)paramView;
      if (recyclerView.getLayoutManager() != null)
        recyclerView.getLayoutManager().onInitializeAccessibilityEvent(paramAccessibilityEvent); 
    } 
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setClassName(RecyclerView.class.getName());
    if (!shouldIgnore() && this.mRecyclerView.getLayoutManager() != null)
      this.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfoCompat); 
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle) {
    return super.performAccessibilityAction(paramView, paramInt, paramBundle) ? true : ((!shouldIgnore() && this.mRecyclerView.getLayoutManager() != null) ? this.mRecyclerView.getLayoutManager().performAccessibilityAction(paramInt, paramBundle) : false);
  }
  
  boolean shouldIgnore() {
    return this.mRecyclerView.hasPendingAdapterUpdates();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerViewAccessibilityDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */