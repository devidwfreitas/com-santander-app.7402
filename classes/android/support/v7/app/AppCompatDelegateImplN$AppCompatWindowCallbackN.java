package android.support.v7.app;

import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.Window;
import java.util.List;

class AppCompatDelegateImplN$AppCompatWindowCallbackN extends AppCompatDelegateImplV23$AppCompatWindowCallbackV23 {
  AppCompatDelegateImplN$AppCompatWindowCallbackN(Window.Callback paramCallback) {
    super(paramAppCompatDelegateImplN, paramCallback);
  }
  
  public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> paramList, Menu paramMenu, int paramInt) {
    AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = AppCompatDelegateImplN.this.getPanelState(0, true);
    if (appCompatDelegateImplV9$PanelFeatureState != null && appCompatDelegateImplV9$PanelFeatureState.menu != null) {
      super.onProvideKeyboardShortcuts(paramList, (Menu)appCompatDelegateImplV9$PanelFeatureState.menu, paramInt);
      return;
    } 
    super.onProvideKeyboardShortcuts(paramList, paramMenu, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplN$AppCompatWindowCallbackN.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */