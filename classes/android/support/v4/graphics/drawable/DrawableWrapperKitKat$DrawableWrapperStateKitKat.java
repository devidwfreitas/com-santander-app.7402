package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;

class DrawableWrapperKitKat$DrawableWrapperStateKitKat extends DrawableWrapperGingerbread$DrawableWrapperState {
  DrawableWrapperKitKat$DrawableWrapperStateKitKat(@Nullable DrawableWrapperGingerbread$DrawableWrapperState paramDrawableWrapperGingerbread$DrawableWrapperState, @Nullable Resources paramResources) {
    super(paramDrawableWrapperGingerbread$DrawableWrapperState, paramResources);
  }
  
  public Drawable newDrawable(@Nullable Resources paramResources) {
    return new DrawableWrapperKitKat(this, paramResources);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableWrapperKitKat$DrawableWrapperStateKitKat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */