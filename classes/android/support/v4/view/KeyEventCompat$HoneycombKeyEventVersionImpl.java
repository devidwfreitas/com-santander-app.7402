package android.support.v4.view;

import android.view.KeyEvent;

class KeyEventCompat$HoneycombKeyEventVersionImpl extends KeyEventCompat$BaseKeyEventVersionImpl {
  public boolean isCtrlPressed(KeyEvent paramKeyEvent) {
    return KeyEventCompatHoneycomb.isCtrlPressed(paramKeyEvent);
  }
  
  public boolean metaStateHasModifiers(int paramInt1, int paramInt2) {
    return KeyEventCompatHoneycomb.metaStateHasModifiers(paramInt1, paramInt2);
  }
  
  public boolean metaStateHasNoModifiers(int paramInt) {
    return KeyEventCompatHoneycomb.metaStateHasNoModifiers(paramInt);
  }
  
  public int normalizeMetaState(int paramInt) {
    return KeyEventCompatHoneycomb.normalizeMetaState(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\KeyEventCompat$HoneycombKeyEventVersionImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */