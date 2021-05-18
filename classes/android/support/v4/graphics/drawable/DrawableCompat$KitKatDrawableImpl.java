package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableCompat$KitKatDrawableImpl extends DrawableCompat$JellybeanMr1DrawableImpl {
  public int getAlpha(Drawable paramDrawable) {
    return DrawableCompatKitKat.getAlpha(paramDrawable);
  }
  
  public boolean isAutoMirrored(Drawable paramDrawable) {
    return DrawableCompatKitKat.isAutoMirrored(paramDrawable);
  }
  
  public void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean) {
    DrawableCompatKitKat.setAutoMirrored(paramDrawable, paramBoolean);
  }
  
  public Drawable wrap(Drawable paramDrawable) {
    return DrawableCompatKitKat.wrapForTinting(paramDrawable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableCompat$KitKatDrawableImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */