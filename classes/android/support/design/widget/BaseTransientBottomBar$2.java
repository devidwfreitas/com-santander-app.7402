package android.support.design.widget;

import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

class BaseTransientBottomBar$2 implements OnApplyWindowInsetsListener {
  public WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat) {
    paramView.setPadding(paramView.getPaddingLeft(), paramView.getPaddingTop(), paramView.getPaddingRight(), paramWindowInsetsCompat.getSystemWindowInsetBottom());
    return paramWindowInsetsCompat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BaseTransientBottomBar$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */