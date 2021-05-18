package android.support.v4.view;

import android.view.View;

class ViewCompat$Api24ViewCompatImpl extends ViewCompat$MarshmallowViewCompatImpl {
  public void setPointerIcon(View paramView, PointerIconCompat paramPointerIconCompat) {
    if (paramPointerIconCompat != null) {
      Object object = paramPointerIconCompat.getPointerIcon();
    } else {
      paramPointerIconCompat = null;
    } 
    ViewCompatApi24.setPointerIcon(paramView, paramPointerIconCompat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewCompat$Api24ViewCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */