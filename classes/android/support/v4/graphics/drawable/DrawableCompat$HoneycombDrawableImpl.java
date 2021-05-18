package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableCompat$HoneycombDrawableImpl extends DrawableCompat$BaseDrawableImpl {
  public void jumpToCurrentState(Drawable paramDrawable) {
    DrawableCompatHoneycomb.jumpToCurrentState(paramDrawable);
  }
  
  public Drawable wrap(Drawable paramDrawable) {
    return DrawableCompatHoneycomb.wrapForTinting(paramDrawable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableCompat$HoneycombDrawableImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */