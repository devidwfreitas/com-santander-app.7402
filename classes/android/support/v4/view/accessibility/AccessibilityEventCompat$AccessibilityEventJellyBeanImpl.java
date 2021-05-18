package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityEvent;

class AccessibilityEventCompat$AccessibilityEventJellyBeanImpl extends AccessibilityEventCompat$AccessibilityEventIcsImpl {
  public int getAction(AccessibilityEvent paramAccessibilityEvent) {
    return AccessibilityEventCompatJellyBean.getAction(paramAccessibilityEvent);
  }
  
  public int getMovementGranularity(AccessibilityEvent paramAccessibilityEvent) {
    return AccessibilityEventCompatJellyBean.getMovementGranularity(paramAccessibilityEvent);
  }
  
  public void setAction(AccessibilityEvent paramAccessibilityEvent, int paramInt) {
    AccessibilityEventCompatJellyBean.setAction(paramAccessibilityEvent, paramInt);
  }
  
  public void setMovementGranularity(AccessibilityEvent paramAccessibilityEvent, int paramInt) {
    AccessibilityEventCompatJellyBean.setMovementGranularity(paramAccessibilityEvent, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityEventCompat$AccessibilityEventJellyBeanImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */