package android.support.v4.view.accessibility;

public class AccessibilityNodeInfoCompat$RangeInfoCompat {
  public static final int RANGE_TYPE_FLOAT = 1;
  
  public static final int RANGE_TYPE_INT = 0;
  
  public static final int RANGE_TYPE_PERCENT = 2;
  
  final Object mInfo;
  
  AccessibilityNodeInfoCompat$RangeInfoCompat(Object paramObject) {
    this.mInfo = paramObject;
  }
  
  public static AccessibilityNodeInfoCompat$RangeInfoCompat obtain(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3) {
    return new AccessibilityNodeInfoCompat$RangeInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainRangeInfo(paramInt, paramFloat1, paramFloat2, paramFloat3));
  }
  
  public float getCurrent() {
    return AccessibilityNodeInfoCompatKitKat$RangeInfo.getCurrent(this.mInfo);
  }
  
  public float getMax() {
    return AccessibilityNodeInfoCompatKitKat$RangeInfo.getMax(this.mInfo);
  }
  
  public float getMin() {
    return AccessibilityNodeInfoCompatKitKat$RangeInfo.getMin(this.mInfo);
  }
  
  public int getType() {
    return AccessibilityNodeInfoCompatKitKat$RangeInfo.getType(this.mInfo);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityNodeInfoCompat$RangeInfoCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */