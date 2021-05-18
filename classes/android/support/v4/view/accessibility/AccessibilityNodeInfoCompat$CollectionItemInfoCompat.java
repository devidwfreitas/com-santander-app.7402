package android.support.v4.view.accessibility;

public class AccessibilityNodeInfoCompat$CollectionItemInfoCompat {
  final Object mInfo;
  
  AccessibilityNodeInfoCompat$CollectionItemInfoCompat(Object paramObject) {
    this.mInfo = paramObject;
  }
  
  public static AccessibilityNodeInfoCompat$CollectionItemInfoCompat obtain(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean) {
    return new AccessibilityNodeInfoCompat$CollectionItemInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainCollectionItemInfo(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean));
  }
  
  public static AccessibilityNodeInfoCompat$CollectionItemInfoCompat obtain(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2) {
    return new AccessibilityNodeInfoCompat$CollectionItemInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainCollectionItemInfo(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1, paramBoolean2));
  }
  
  public int getColumnIndex() {
    return AccessibilityNodeInfoCompat.IMPL.getCollectionItemColumnIndex(this.mInfo);
  }
  
  public int getColumnSpan() {
    return AccessibilityNodeInfoCompat.IMPL.getCollectionItemColumnSpan(this.mInfo);
  }
  
  public int getRowIndex() {
    return AccessibilityNodeInfoCompat.IMPL.getCollectionItemRowIndex(this.mInfo);
  }
  
  public int getRowSpan() {
    return AccessibilityNodeInfoCompat.IMPL.getCollectionItemRowSpan(this.mInfo);
  }
  
  public boolean isHeading() {
    return AccessibilityNodeInfoCompat.IMPL.isCollectionItemHeading(this.mInfo);
  }
  
  public boolean isSelected() {
    return AccessibilityNodeInfoCompat.IMPL.isCollectionItemSelected(this.mInfo);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityNodeInfoCompat$CollectionItemInfoCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */