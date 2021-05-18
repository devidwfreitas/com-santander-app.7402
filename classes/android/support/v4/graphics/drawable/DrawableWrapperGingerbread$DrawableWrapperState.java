package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;

public abstract class DrawableWrapperGingerbread$DrawableWrapperState extends Drawable.ConstantState {
  int mChangingConfigurations;
  
  Drawable.ConstantState mDrawableState;
  
  ColorStateList mTint = null;
  
  PorterDuff.Mode mTintMode = DrawableWrapperGingerbread.DEFAULT_TINT_MODE;
  
  DrawableWrapperGingerbread$DrawableWrapperState(@Nullable DrawableWrapperGingerbread$DrawableWrapperState paramDrawableWrapperGingerbread$DrawableWrapperState, @Nullable Resources paramResources) {
    if (paramDrawableWrapperGingerbread$DrawableWrapperState != null) {
      this.mChangingConfigurations = paramDrawableWrapperGingerbread$DrawableWrapperState.mChangingConfigurations;
      this.mDrawableState = paramDrawableWrapperGingerbread$DrawableWrapperState.mDrawableState;
      this.mTint = paramDrawableWrapperGingerbread$DrawableWrapperState.mTint;
      this.mTintMode = paramDrawableWrapperGingerbread$DrawableWrapperState.mTintMode;
    } 
  }
  
  boolean canConstantState() {
    return (this.mDrawableState != null);
  }
  
  public int getChangingConfigurations() {
    int j = this.mChangingConfigurations;
    if (this.mDrawableState != null) {
      int k = this.mDrawableState.getChangingConfigurations();
      return k | j;
    } 
    int i = 0;
    return i | j;
  }
  
  public Drawable newDrawable() {
    return newDrawable(null);
  }
  
  public abstract Drawable newDrawable(@Nullable Resources paramResources);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableWrapperGingerbread$DrawableWrapperState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */