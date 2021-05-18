package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityEvent;

interface AccessibilityEventCompat$AccessibilityEventVersionImpl {
  void appendRecord(AccessibilityEvent paramAccessibilityEvent, Object paramObject);
  
  int getAction(AccessibilityEvent paramAccessibilityEvent);
  
  int getContentChangeTypes(AccessibilityEvent paramAccessibilityEvent);
  
  int getMovementGranularity(AccessibilityEvent paramAccessibilityEvent);
  
  Object getRecord(AccessibilityEvent paramAccessibilityEvent, int paramInt);
  
  int getRecordCount(AccessibilityEvent paramAccessibilityEvent);
  
  void setAction(AccessibilityEvent paramAccessibilityEvent, int paramInt);
  
  void setContentChangeTypes(AccessibilityEvent paramAccessibilityEvent, int paramInt);
  
  void setMovementGranularity(AccessibilityEvent paramAccessibilityEvent, int paramInt);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityEventCompat$AccessibilityEventVersionImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */