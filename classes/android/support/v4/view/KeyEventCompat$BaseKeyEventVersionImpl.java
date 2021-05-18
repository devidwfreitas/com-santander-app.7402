package android.support.v4.view;

import android.view.KeyEvent;

class KeyEventCompat$BaseKeyEventVersionImpl implements KeyEventCompat$KeyEventVersionImpl {
  private static final int META_ALL_MASK = 247;
  
  private static final int META_MODIFIER_MASK = 247;
  
  private static int metaStateFilterDirectionalModifiers(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    boolean bool1;
    boolean bool2 = true;
    if ((paramInt2 & paramInt3) != 0) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    paramInt4 |= paramInt5;
    if ((paramInt2 & paramInt4) != 0) {
      paramInt2 = bool2;
    } else {
      paramInt2 = 0;
    } 
    if (bool1) {
      if (paramInt2 != 0)
        throw new IllegalArgumentException("bad arguments"); 
      return paramInt1 & (paramInt4 ^ 0xFFFFFFFF);
    } 
    paramInt4 = paramInt1;
    return (paramInt2 != 0) ? (paramInt1 & (paramInt3 ^ 0xFFFFFFFF)) : paramInt4;
  }
  
  public boolean isCtrlPressed(KeyEvent paramKeyEvent) {
    return false;
  }
  
  public boolean metaStateHasModifiers(int paramInt1, int paramInt2) {
    return (metaStateFilterDirectionalModifiers(metaStateFilterDirectionalModifiers(normalizeMetaState(paramInt1) & 0xF7, paramInt2, 1, 64, 128), paramInt2, 2, 16, 32) == paramInt2);
  }
  
  public boolean metaStateHasNoModifiers(int paramInt) {
    return ((normalizeMetaState(paramInt) & 0xF7) == 0);
  }
  
  public int normalizeMetaState(int paramInt) {
    if ((paramInt & 0xC0) != 0)
      paramInt |= 0x1; 
    int i = paramInt;
    if ((paramInt & 0x30) != 0)
      i = paramInt | 0x2; 
    return i & 0xF7;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\KeyEventCompat$BaseKeyEventVersionImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */