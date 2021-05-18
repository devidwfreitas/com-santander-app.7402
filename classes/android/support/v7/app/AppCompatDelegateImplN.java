package android.support.v7.app;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.view.Window;

@TargetApi(24)
@RequiresApi(24)
class AppCompatDelegateImplN extends AppCompatDelegateImplV23 {
  AppCompatDelegateImplN(Context paramContext, Window paramWindow, AppCompatCallback paramAppCompatCallback) {
    super(paramContext, paramWindow, paramAppCompatCallback);
  }
  
  Window.Callback wrapWindowCallback(Window.Callback paramCallback) {
    return (Window.Callback)new AppCompatDelegateImplN$AppCompatWindowCallbackN(this, paramCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplN.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */