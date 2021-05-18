package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;

class DrawableWrapperGingerbread$DrawableWrapperStateBase extends DrawableWrapperGingerbread$DrawableWrapperState {
  DrawableWrapperGingerbread$DrawableWrapperStateBase(@Nullable DrawableWrapperGingerbread$DrawableWrapperState paramDrawableWrapperGingerbread$DrawableWrapperState, @Nullable Resources paramResources) {
    super(paramDrawableWrapperGingerbread$DrawableWrapperState, paramResources);
  }
  
  public Drawable newDrawable(@Nullable Resources paramResources) {
    return new DrawableWrapperGingerbread(this, paramResources);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableWrapperGingerbread$DrawableWrapperStateBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */