package android.support.v7.app;

import android.graphics.Rect;
import android.support.v7.widget.FitWindowsViewGroup;

class AppCompatDelegateImplV9$3 implements FitWindowsViewGroup.OnFitSystemWindowsListener {
  public void onFitSystemWindows(Rect paramRect) {
    paramRect.top = AppCompatDelegateImplV9.this.updateStatusGuard(paramRect.top);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */