package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.UiModeManager;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.view.Window;

@TargetApi(23)
@RequiresApi(23)
class AppCompatDelegateImplV23 extends AppCompatDelegateImplV14 {
  private final UiModeManager mUiModeManager;
  
  AppCompatDelegateImplV23(Context paramContext, Window paramWindow, AppCompatCallback paramAppCompatCallback) {
    super(paramContext, paramWindow, paramAppCompatCallback);
    this.mUiModeManager = (UiModeManager)paramContext.getSystemService("uimode");
  }
  
  int mapNightMode(int paramInt) {
    return (paramInt == 0 && this.mUiModeManager.getNightMode() == 0) ? -1 : super.mapNightMode(paramInt);
  }
  
  Window.Callback wrapWindowCallback(Window.Callback paramCallback) {
    return (Window.Callback)new AppCompatDelegateImplV23$AppCompatWindowCallbackV23(this, paramCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */