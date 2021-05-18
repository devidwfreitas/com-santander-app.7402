package android.support.v4.view.accessibility;

public class AccessibilityNodeInfoCompat$CollectionInfoCompat {
  public static final int SELECTION_MODE_MULTIPLE = 2;
  
  public static final int SELECTION_MODE_NONE = 0;
  
  public static final int SELECTION_MODE_SINGLE = 1;
  
  final Object mInfo;
  
  AccessibilityNodeInfoCompat$CollectionInfoCompat(Object paramObject) {
    this.mInfo = paramObject;
  }
  
  public static AccessibilityNodeInfoCompat$CollectionInfoCompat obtain(int paramInt1, int paramInt2, boolean paramBoolean) {
    return new AccessibilityNodeInfoCompat$CollectionInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainCollectionInfo(paramInt1, paramInt2, paramBoolean));
  }
  
  public static AccessibilityNodeInfoCompat$CollectionInfoCompat obtain(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3) {
    return new AccessibilityNodeInfoCompat$CollectionInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainCollectionInfo(paramInt1, paramInt2, paramBoolean, paramInt3));
  }
  
  public int getColumnCount() {
    return AccessibilityNodeInfoCompat.IMPL.getCollectionInfoColumnCount(this.mInfo);
  }
  
  public int getRowCount() {
    return AccessibilityNodeInfoCompat.IMPL.getCollectionInfoRowCount(this.mInfo);
  }
  
  public int getSelectionMode() {
    return AccessibilityNodeInfoCompat.IMPL.getCollectionInfoSelectionMode(this.mInfo);
  }
  
  public boolean isHierarchical() {
    return AccessibilityNodeInfoCompat.IMPL.isCollectionInfoHierarchical(this.mInfo);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityNodeInfoCompat$CollectionInfoCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */