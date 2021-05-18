package android.support.v4.widget;

import android.view.View;
import android.view.WindowInsets;

class DrawerLayoutCompatApi21$InsetsListener implements View.OnApplyWindowInsetsListener {
  public WindowInsets onApplyWindowInsets(View paramView, WindowInsets paramWindowInsets) {
    DrawerLayoutImpl drawerLayoutImpl = (DrawerLayoutImpl)paramView;
    if (paramWindowInsets.getSystemWindowInsetTop() > 0) {
      boolean bool1 = true;
      drawerLayoutImpl.setChildInsets(paramWindowInsets, bool1);
      return paramWindowInsets.consumeSystemWindowInsets();
    } 
    boolean bool = false;
    drawerLayoutImpl.setChildInsets(paramWindowInsets, bool);
    return paramWindowInsets.consumeSystemWindowInsets();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\DrawerLayoutCompatApi21$InsetsListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */