package android.support.v4.view.accessibility;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;

public final class AccessibilityEventCompat {
  public static final int CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION = 4;
  
  public static final int CONTENT_CHANGE_TYPE_SUBTREE = 1;
  
  public static final int CONTENT_CHANGE_TYPE_TEXT = 2;
  
  public static final int CONTENT_CHANGE_TYPE_UNDEFINED = 0;
  
  private static final AccessibilityEventCompat$AccessibilityEventVersionImpl IMPL = new AccessibilityEventCompat$AccessibilityEventStubImpl();
  
  public static final int TYPES_ALL_MASK = -1;
  
  public static final int TYPE_ANNOUNCEMENT = 16384;
  
  public static final int TYPE_ASSIST_READING_CONTEXT = 16777216;
  
  public static final int TYPE_GESTURE_DETECTION_END = 524288;
  
  public static final int TYPE_GESTURE_DETECTION_START = 262144;
  
  public static final int TYPE_TOUCH_EXPLORATION_GESTURE_END = 1024;
  
  public static final int TYPE_TOUCH_EXPLORATION_GESTURE_START = 512;
  
  public static final int TYPE_TOUCH_INTERACTION_END = 2097152;
  
  public static final int TYPE_TOUCH_INTERACTION_START = 1048576;
  
  public static final int TYPE_VIEW_ACCESSIBILITY_FOCUSED = 32768;
  
  public static final int TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED = 65536;
  
  public static final int TYPE_VIEW_CONTEXT_CLICKED = 8388608;
  
  public static final int TYPE_VIEW_HOVER_ENTER = 128;
  
  public static final int TYPE_VIEW_HOVER_EXIT = 256;
  
  public static final int TYPE_VIEW_SCROLLED = 4096;
  
  public static final int TYPE_VIEW_TEXT_SELECTION_CHANGED = 8192;
  
  public static final int TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY = 131072;
  
  public static final int TYPE_WINDOWS_CHANGED = 4194304;
  
  public static final int TYPE_WINDOW_CONTENT_CHANGED = 2048;
  
  public static void appendRecord(AccessibilityEvent paramAccessibilityEvent, AccessibilityRecordCompat paramAccessibilityRecordCompat) {
    IMPL.appendRecord(paramAccessibilityEvent, paramAccessibilityRecordCompat.getImpl());
  }
  
  public static AccessibilityRecordCompat asRecord(AccessibilityEvent paramAccessibilityEvent) {
    return new AccessibilityRecordCompat(paramAccessibilityEvent);
  }
  
  public static int getContentChangeTypes(AccessibilityEvent paramAccessibilityEvent) {
    return IMPL.getContentChangeTypes(paramAccessibilityEvent);
  }
  
  public static AccessibilityRecordCompat getRecord(AccessibilityEvent paramAccessibilityEvent, int paramInt) {
    return new AccessibilityRecordCompat(IMPL.getRecord(paramAccessibilityEvent, paramInt));
  }
  
  public static int getRecordCount(AccessibilityEvent paramAccessibilityEvent) {
    return IMPL.getRecordCount(paramAccessibilityEvent);
  }
  
  public static void setContentChangeTypes(AccessibilityEvent paramAccessibilityEvent, int paramInt) {
    IMPL.setContentChangeTypes(paramAccessibilityEvent, paramInt);
  }
  
  public int getAction(AccessibilityEvent paramAccessibilityEvent) {
    return IMPL.getAction(paramAccessibilityEvent);
  }
  
  public int getMovementGranularity(AccessibilityEvent paramAccessibilityEvent) {
    return IMPL.getMovementGranularity(paramAccessibilityEvent);
  }
  
  public void setAction(AccessibilityEvent paramAccessibilityEvent, int paramInt) {
    IMPL.setAction(paramAccessibilityEvent, paramInt);
  }
  
  public void setMovementGranularity(AccessibilityEvent paramAccessibilityEvent, int paramInt) {
    IMPL.setMovementGranularity(paramAccessibilityEvent, paramInt);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 19) {
      IMPL = new AccessibilityEventCompat$AccessibilityEventKitKatImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 16) {
      IMPL = new AccessibilityEventCompat$AccessibilityEventJellyBeanImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new AccessibilityEventCompat$AccessibilityEventIcsImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityEventCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */