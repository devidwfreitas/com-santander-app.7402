package android.support.v7.app;

import android.support.v7.view.ActionMode;
import android.support.v7.view.SupportActionModeWrapper;
import android.view.ActionMode;
import android.view.Window;

class AppCompatDelegateImplV14$AppCompatWindowCallbackV14 extends AppCompatDelegateImplBase$AppCompatWindowCallbackBase {
  AppCompatDelegateImplV14$AppCompatWindowCallbackV14(Window.Callback paramCallback) {
    super(paramAppCompatDelegateImplV14, paramCallback);
  }
  
  public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback) {
    return AppCompatDelegateImplV14.this.isHandleNativeActionModesEnabled() ? startAsSupportActionMode(paramCallback) : super.onWindowStartingActionMode(paramCallback);
  }
  
  final ActionMode startAsSupportActionMode(ActionMode.Callback paramCallback) {
    SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(AppCompatDelegateImplV14.this.mContext, paramCallback);
    ActionMode actionMode = AppCompatDelegateImplV14.this.startSupportActionMode((ActionMode.Callback)callbackWrapper);
    return (actionMode != null) ? callbackWrapper.getActionModeWrapper(actionMode) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV14$AppCompatWindowCallbackV14.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */