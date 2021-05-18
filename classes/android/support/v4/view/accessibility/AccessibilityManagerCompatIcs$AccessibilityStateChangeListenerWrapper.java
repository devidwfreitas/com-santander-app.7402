package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityManager;

public class AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper implements AccessibilityManager.AccessibilityStateChangeListener {
  Object mListener;
  
  AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge mListenerBridge;
  
  public AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper(Object paramObject, AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge paramAccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge) {
    this.mListener = paramObject;
    this.mListenerBridge = paramAccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      return (this.mListener == null) ? (!(((AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper)paramObject).mListener != null)) : this.mListener.equals(((AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper)paramObject).mListener);
    } 
    return true;
  }
  
  public int hashCode() {
    return (this.mListener == null) ? 0 : this.mListener.hashCode();
  }
  
  public void onAccessibilityStateChanged(boolean paramBoolean) {
    this.mListenerBridge.onAccessibilityStateChanged(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */