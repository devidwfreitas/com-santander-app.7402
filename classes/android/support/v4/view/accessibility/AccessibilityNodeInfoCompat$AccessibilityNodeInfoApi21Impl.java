package android.support.v4.view.accessibility;

import android.view.View;
import java.util.List;

class AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl extends AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl {
  public void addAction(Object paramObject1, Object paramObject2) {
    AccessibilityNodeInfoCompatApi21.addAction(paramObject1, paramObject2);
  }
  
  public int getAccessibilityActionId(Object paramObject) {
    return AccessibilityNodeInfoCompatApi21.getAccessibilityActionId(paramObject);
  }
  
  public CharSequence getAccessibilityActionLabel(Object paramObject) {
    return AccessibilityNodeInfoCompatApi21.getAccessibilityActionLabel(paramObject);
  }
  
  public List<Object> getActionList(Object paramObject) {
    return AccessibilityNodeInfoCompatApi21.getActionList(paramObject);
  }
  
  public int getCollectionInfoSelectionMode(Object paramObject) {
    return AccessibilityNodeInfoCompatApi21$CollectionInfo.getSelectionMode(paramObject);
  }
  
  public CharSequence getError(Object paramObject) {
    return AccessibilityNodeInfoCompatApi21.getError(paramObject);
  }
  
  public int getMaxTextLength(Object paramObject) {
    return AccessibilityNodeInfoCompatApi21.getMaxTextLength(paramObject);
  }
  
  public Object getWindow(Object paramObject) {
    return AccessibilityNodeInfoCompatApi21.getWindow(paramObject);
  }
  
  public boolean isCollectionItemSelected(Object paramObject) {
    return AccessibilityNodeInfoCompatApi21$CollectionItemInfo.isSelected(paramObject);
  }
  
  public Object newAccessibilityAction(int paramInt, CharSequence paramCharSequence) {
    return AccessibilityNodeInfoCompatApi21.newAccessibilityAction(paramInt, paramCharSequence);
  }
  
  public Object obtainCollectionInfo(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3) {
    return AccessibilityNodeInfoCompatApi21.obtainCollectionInfo(paramInt1, paramInt2, paramBoolean, paramInt3);
  }
  
  public Object obtainCollectionItemInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2) {
    return AccessibilityNodeInfoCompatApi21.obtainCollectionItemInfo(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1, paramBoolean2);
  }
  
  public boolean removeAction(Object paramObject1, Object paramObject2) {
    return AccessibilityNodeInfoCompatApi21.removeAction(paramObject1, paramObject2);
  }
  
  public boolean removeChild(Object paramObject, View paramView) {
    return AccessibilityNodeInfoCompatApi21.removeChild(paramObject, paramView);
  }
  
  public boolean removeChild(Object paramObject, View paramView, int paramInt) {
    return AccessibilityNodeInfoCompatApi21.removeChild(paramObject, paramView, paramInt);
  }
  
  public void setError(Object paramObject, CharSequence paramCharSequence) {
    AccessibilityNodeInfoCompatApi21.setError(paramObject, paramCharSequence);
  }
  
  public void setMaxTextLength(Object paramObject, int paramInt) {
    AccessibilityNodeInfoCompatApi21.setMaxTextLength(paramObject, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */