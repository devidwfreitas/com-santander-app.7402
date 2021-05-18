package android.support.v7.widget;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

final class AppCompatPopupWindow$1 implements ViewTreeObserver.OnScrollChangedListener {
  public void onScrollChanged() {
    try {
      WeakReference weakReference = (WeakReference)fieldAnchor.get(popup);
      if (weakReference != null) {
        if (weakReference.get() == null)
          return; 
        originalListener.onScrollChanged();
        return;
      } 
    } catch (IllegalAccessException illegalAccessException) {}
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatPopupWindow$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */