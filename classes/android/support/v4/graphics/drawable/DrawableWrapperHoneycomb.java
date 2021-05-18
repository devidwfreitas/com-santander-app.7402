package android.support.v4.graphics.drawable;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

@TargetApi(11)
@RequiresApi(11)
class DrawableWrapperHoneycomb extends DrawableWrapperGingerbread {
  DrawableWrapperHoneycomb(Drawable paramDrawable) {
    super(paramDrawable);
  }
  
  DrawableWrapperHoneycomb(DrawableWrapperGingerbread$DrawableWrapperState paramDrawableWrapperGingerbread$DrawableWrapperState, Resources paramResources) {
    super(paramDrawableWrapperGingerbread$DrawableWrapperState, paramResources);
  }
  
  public void jumpToCurrentState() {
    this.mDrawable.jumpToCurrentState();
  }
  
  @NonNull
  DrawableWrapperGingerbread$DrawableWrapperState mutateConstantState() {
    return new DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb(this.mState, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableWrapperHoneycomb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */