package android.support.v7.app;

import android.view.ActionMode;
import android.view.Window;

class AppCompatDelegateImplV23$AppCompatWindowCallbackV23 extends AppCompatDelegateImplV14$AppCompatWindowCallbackV14 {
  AppCompatDelegateImplV23$AppCompatWindowCallbackV23(Window.Callback paramCallback) {
    super(paramAppCompatDelegateImplV23, paramCallback);
  }
  
  public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback) {
    return null;
  }
  
  public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback, int paramInt) {
    if (AppCompatDelegateImplV23.this.isHandleNativeActionModesEnabled()) {
      switch (paramInt) {
        default:
          return super.onWindowStartingActionMode(paramCallback, paramInt);
        case 0:
          break;
      } 
      return startAsSupportActionMode(paramCallback);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV23$AppCompatWindowCallbackV23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */