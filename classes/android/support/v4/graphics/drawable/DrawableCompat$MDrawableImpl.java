package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableCompat$MDrawableImpl extends DrawableCompat$LollipopDrawableImpl {
  public void clearColorFilter(Drawable paramDrawable) {
    paramDrawable.clearColorFilter();
  }
  
  public int getLayoutDirection(Drawable paramDrawable) {
    return DrawableCompatApi23.getLayoutDirection(paramDrawable);
  }
  
  public boolean setLayoutDirection(Drawable paramDrawable, int paramInt) {
    return DrawableCompatApi23.setLayoutDirection(paramDrawable, paramInt);
  }
  
  public Drawable wrap(Drawable paramDrawable) {
    return paramDrawable;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableCompat$MDrawableImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */