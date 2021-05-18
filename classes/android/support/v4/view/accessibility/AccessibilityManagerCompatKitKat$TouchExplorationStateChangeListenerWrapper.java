package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityManager;

public class AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper implements AccessibilityManager.TouchExplorationStateChangeListener {
  final Object mListener;
  
  final AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge mListenerBridge;
  
  public AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper(Object paramObject, AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge paramAccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge) {
    this.mListener = paramObject;
    this.mListenerBridge = paramAccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      return (this.mListener == null) ? (!(((AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper)paramObject).mListener != null)) : this.mListener.equals(((AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper)paramObject).mListener);
    } 
    return true;
  }
  
  public int hashCode() {
    return (this.mListener == null) ? 0 : this.mListener.hashCode();
  }
  
  public void onTouchExplorationStateChanged(boolean paramBoolean) {
    this.mListenerBridge.onTouchExplorationStateChanged(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\accessibility\AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */