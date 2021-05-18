package android.support.v7.app;

import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

class AppCompatDelegateImplV9$2 implements OnApplyWindowInsetsListener {
  public WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat) {
    int i = paramWindowInsetsCompat.getSystemWindowInsetTop();
    int j = AppCompatDelegateImplV9.this.updateStatusGuard(i);
    WindowInsetsCompat windowInsetsCompat = paramWindowInsetsCompat;
    if (i != j)
      windowInsetsCompat = paramWindowInsetsCompat.replaceSystemWindowInsets(paramWindowInsetsCompat.getSystemWindowInsetLeft(), j, paramWindowInsetsCompat.getSystemWindowInsetRight(), paramWindowInsetsCompat.getSystemWindowInsetBottom()); 
    return ViewCompat.onApplyWindowInsets(paramView, windowInsetsCompat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */