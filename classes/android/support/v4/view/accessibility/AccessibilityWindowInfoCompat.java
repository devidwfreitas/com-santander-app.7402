package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.os.Build;

public class AccessibilityWindowInfoCompat {
  private static final AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl IMPL = new AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl();
  
  public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
  
  public static final int TYPE_APPLICATION = 1;
  
  public static final int TYPE_INPUT_METHOD = 2;
  
  public static final int TYPE_SPLIT_SCREEN_DIVIDER = 5;
  
  public static final int TYPE_SYSTEM = 3;
  
  private static final int UNDEFINED = -1;
  
  private Object mInfo;
  
  private AccessibilityWindowInfoCompat(Object paramObject) {
    this.mInfo = paramObject;
  }
  
  public static AccessibilityWindowInfoCompat obtain() {
    return wrapNonNullInstance(IMPL.obtain());
  }
  
  public static AccessibilityWindowInfoCompat obtain(AccessibilityWindowInfoCompat paramAccessibilityWindowInfoCompat) {
    return (paramAccessibilityWindowInfoCompat == null) ? null : wrapNonNullInstance(IMPL.obtain(paramAccessibilityWindowInfoCompat.mInfo));
  }
  
  private static String typeToString(int paramInt) {
    switch (paramInt) {
      default:
        return "<UNKNOWN>";
      case 1:
        return "TYPE_APPLICATION";
      case 2:
        return "TYPE_INPUT_METHOD";
      case 3:
        return "TYPE_SYSTEM";
      case 4:
        break;
    } 
    return "TYPE_ACCESSIBILITY_OVERLAY";
  }
  
  static AccessibilityWindowInfoCompat wrapNonNullInstance(Object paramObject) {
    return (paramObject != null) ? new AccessibilityWindowInfoCompat(paramObject) : null;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null)
        return false; 
      if (getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (this.mInfo == null)
        return !(((AccessibilityWindowInfoCompat)paramObject).mInfo != null); 
      if (!this.mInfo.equals(((AccessibilityWindowInfoCompat)paramObject).mInfo))
        return false; 
    } 
    return true;
  }
  
  public AccessibilityNodeInfoCompat getAnchor() {
    return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.getAnchor(this.mInfo));
  }
  
  public void getBoundsInScreen(Rect paramRect) {
    IMPL.getBoundsInScreen(this.mInfo, paramRect);
  }
  
  public AccessibilityWindowInfoCompat getChild(int paramInt) {
    return wrapNonNullInstance(IMPL.getChild(this.mInfo, paramInt));
  }
  
  public int getChildCount() {
    return IMPL.getChildCount(this.mInfo);
  }
  
  public int getId() {
    return IMPL.getId(this.mInfo);
  }
  
  public int getLayer() {
    return IMPL.getLayer(this.mInfo);
  }
  
  public AccessibilityWindowInfoCompat getParent() {
    return wrapNonNullInstance(IMPL.getParent(this.mInfo));
  }
  
  public AccessibilityNodeInfoCompat getRoot() {
    return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.getRoot(this.mInfo));
  }
  
  public CharSequence getTitle() {
    return IMPL.getTitle(this.mInfo);
  }
  
  public int getType() {
    return IMPL.getType(this.mInfo);
  }
  
  public int hashCode() {
    return (this.mInfo == null) ? 0 : this.mInfo.hashCode();
  }
  
  public boolean isAccessibilityFocused() {
    return IMPL.isAccessibilityFocused(this.mInfo);
  }
  
  public boolean isActive() {
    return IMPL.isActive(this.mInfo);
  }
  
  public boolean isFocused() {
    return IMPL.isFocused(this.mInfo);
  }
  
  public void recycle() {
    IMPL.recycle(this.mInfo);
  }
  
  public String toString() {
    boolean bool2 = true;
    StringBuilder stringBuilder1 = new StringBuilder();
    Rect rect = new Rect();
    getBoundsInScreen(rect);
    stringBuilder1.append("AccessibilityWindowInfo[");
    stringBuilder1.append("id=").append(getId());
    stringBuilder1.append(", type=").append(typeToString(getType()));
    stringBuilder1.append(", layer=").append(getLayer());
    stringBuilder1.append(", bounds=").append(rect);
    stringBuilder1.append(", focused=").append(isFocused());
    stringBuilder1.append(", active=").append(isActive());
    StringBuilder stringBuilder2 = stringBuilder1.append(", hasParent=");
    if (getParent() != null) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    stringBuilder2.append(bool1);
    stringBuilder2 = stringBuilder1.append(", hasChildren=");
    if (getChildCount() > 0) {
      bool1 = bool2;
      stringBuilder2.append(bool1);
      stringBuilder1.append(']');
      return stringBuilder1.toString();
    } 
    boolean bool1 = false;
    stringBuilder2.append(bool1);
    stringBuilder1.append(']');
    return stringBuilder1.toString();
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 24) {
      IMPL = new AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      IMPL = new AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityWindowInfoCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */