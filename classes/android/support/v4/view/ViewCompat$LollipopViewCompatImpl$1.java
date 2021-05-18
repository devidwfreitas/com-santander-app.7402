package android.support.v4.view;

import android.view.View;

class ViewCompat$LollipopViewCompatImpl$1 implements ViewCompatLollipop$OnApplyWindowInsetsListenerBridge {
  public Object onApplyWindowInsets(View paramView, Object paramObject) {
    paramObject = WindowInsetsCompat.wrap(paramObject);
    return WindowInsetsCompat.unwrap(listener.onApplyWindowInsets(paramView, (WindowInsetsCompat)paramObject));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewCompat$LollipopViewCompatImpl$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */