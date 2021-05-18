package android.support.v4.widget;

import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;

final class ExploreByTouchHelper$2 implements FocusStrategy$CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> {
  public AccessibilityNodeInfoCompat get(SparseArrayCompat<AccessibilityNodeInfoCompat> paramSparseArrayCompat, int paramInt) {
    return (AccessibilityNodeInfoCompat)paramSparseArrayCompat.valueAt(paramInt);
  }
  
  public int size(SparseArrayCompat<AccessibilityNodeInfoCompat> paramSparseArrayCompat) {
    return paramSparseArrayCompat.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\ExploreByTouchHelper$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */