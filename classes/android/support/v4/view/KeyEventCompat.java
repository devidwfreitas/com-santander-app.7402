package android.support.v4.view;

import android.os.Build;
import android.view.KeyEvent;
import android.view.View;

public final class KeyEventCompat {
  static final KeyEventCompat$KeyEventVersionImpl IMPL = new KeyEventCompat$BaseKeyEventVersionImpl();
  
  @Deprecated
  public static boolean dispatch(KeyEvent paramKeyEvent, KeyEvent.Callback paramCallback, Object paramObject1, Object paramObject2) {
    return paramKeyEvent.dispatch(paramCallback, (KeyEvent.DispatcherState)paramObject1, paramObject2);
  }
  
  @Deprecated
  public static Object getKeyDispatcherState(View paramView) {
    return paramView.getKeyDispatcherState();
  }
  
  public static boolean hasModifiers(KeyEvent paramKeyEvent, int paramInt) {
    return IMPL.metaStateHasModifiers(paramKeyEvent.getMetaState(), paramInt);
  }
  
  public static boolean hasNoModifiers(KeyEvent paramKeyEvent) {
    return IMPL.metaStateHasNoModifiers(paramKeyEvent.getMetaState());
  }
  
  public static boolean isCtrlPressed(KeyEvent paramKeyEvent) {
    return IMPL.isCtrlPressed(paramKeyEvent);
  }
  
  @Deprecated
  public static boolean isTracking(KeyEvent paramKeyEvent) {
    return paramKeyEvent.isTracking();
  }
  
  public static boolean metaStateHasModifiers(int paramInt1, int paramInt2) {
    return IMPL.metaStateHasModifiers(paramInt1, paramInt2);
  }
  
  public static boolean metaStateHasNoModifiers(int paramInt) {
    return IMPL.metaStateHasNoModifiers(paramInt);
  }
  
  public static int normalizeMetaState(int paramInt) {
    return IMPL.normalizeMetaState(paramInt);
  }
  
  @Deprecated
  public static void startTracking(KeyEvent paramKeyEvent) {
    paramKeyEvent.startTracking();
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 11) {
      IMPL = new KeyEventCompat$HoneycombKeyEventVersionImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\KeyEventCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */