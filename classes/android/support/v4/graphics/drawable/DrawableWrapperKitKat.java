package android.support.v4.graphics.drawable;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

@TargetApi(19)
@RequiresApi(19)
class DrawableWrapperKitKat extends DrawableWrapperHoneycomb {
  DrawableWrapperKitKat(Drawable paramDrawable) {
    super(paramDrawable);
  }
  
  DrawableWrapperKitKat(DrawableWrapperGingerbread$DrawableWrapperState paramDrawableWrapperGingerbread$DrawableWrapperState, Resources paramResources) {
    super(paramDrawableWrapperGingerbread$DrawableWrapperState, paramResources);
  }
  
  public boolean isAutoMirrored() {
    return this.mDrawable.isAutoMirrored();
  }
  
  @NonNull
  DrawableWrapperGingerbread$DrawableWrapperState mutateConstantState() {
    return new DrawableWrapperKitKat$DrawableWrapperStateKitKat(this.mState, null);
  }
  
  public void setAutoMirrored(boolean paramBoolean) {
    this.mDrawable.setAutoMirrored(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableWrapperKitKat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */