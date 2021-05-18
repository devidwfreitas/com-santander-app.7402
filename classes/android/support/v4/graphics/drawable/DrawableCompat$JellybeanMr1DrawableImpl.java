package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableCompat$JellybeanMr1DrawableImpl extends DrawableCompat$HoneycombDrawableImpl {
  public int getLayoutDirection(Drawable paramDrawable) {
    int i = DrawableCompatJellybeanMr1.getLayoutDirection(paramDrawable);
    return (i >= 0) ? i : 0;
  }
  
  public boolean setLayoutDirection(Drawable paramDrawable, int paramInt) {
    return DrawableCompatJellybeanMr1.setLayoutDirection(paramDrawable, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableCompat$JellybeanMr1DrawableImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */