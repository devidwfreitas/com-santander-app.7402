package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityEvent;

class AccessibilityEventCompat$AccessibilityEventIcsImpl extends AccessibilityEventCompat$AccessibilityEventStubImpl {
  public void appendRecord(AccessibilityEvent paramAccessibilityEvent, Object paramObject) {
    AccessibilityEventCompatIcs.appendRecord(paramAccessibilityEvent, paramObject);
  }
  
  public Object getRecord(AccessibilityEvent paramAccessibilityEvent, int paramInt) {
    return AccessibilityEventCompatIcs.getRecord(paramAccessibilityEvent, paramInt);
  }
  
  public int getRecordCount(AccessibilityEvent paramAccessibilityEvent) {
    return AccessibilityEventCompatIcs.getRecordCount(paramAccessibilityEvent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityEventCompat$AccessibilityEventIcsImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */