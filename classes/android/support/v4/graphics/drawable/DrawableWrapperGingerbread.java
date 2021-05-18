package android.support.v4.graphics.drawable;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;

@TargetApi(9)
@RequiresApi(9)
class DrawableWrapperGingerbread extends Drawable implements Drawable.Callback, DrawableWrapper, TintAwareDrawable {
  static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
  
  private boolean mColorFilterSet;
  
  private int mCurrentColor;
  
  private PorterDuff.Mode mCurrentMode;
  
  Drawable mDrawable;
  
  private boolean mMutated;
  
  DrawableWrapperGingerbread$DrawableWrapperState mState = mutateConstantState();
  
  DrawableWrapperGingerbread(@Nullable Drawable paramDrawable) {
    setWrappedDrawable(paramDrawable);
  }
  
  DrawableWrapperGingerbread(@NonNull DrawableWrapperGingerbread$DrawableWrapperState paramDrawableWrapperGingerbread$DrawableWrapperState, @Nullable Resources paramResources) {
    updateLocalState(paramResources);
  }
  
  private void updateLocalState(@Nullable Resources paramResources) {
    if (this.mState != null && this.mState.mDrawableState != null)
      setWrappedDrawable(newDrawableFromState(this.mState.mDrawableState, paramResources)); 
  }
  
  private boolean updateTint(int[] paramArrayOfint) {
    if (isCompatTintEnabled()) {
      ColorStateList colorStateList = this.mState.mTint;
      PorterDuff.Mode mode = this.mState.mTintMode;
      if (colorStateList != null && mode != null) {
        int i = colorStateList.getColorForState(paramArrayOfint, colorStateList.getDefaultColor());
        if (!this.mColorFilterSet || i != this.mCurrentColor || mode != this.mCurrentMode) {
          setColorFilter(i, mode);
          this.mCurrentColor = i;
          this.mCurrentMode = mode;
          this.mColorFilterSet = true;
          return true;
        } 
        return false;
      } 
      this.mColorFilterSet = false;
      clearColorFilter();
      return false;
    } 
    return false;
  }
  
  public void draw(Canvas paramCanvas) {
    this.mDrawable.draw(paramCanvas);
  }
  
  public int getChangingConfigurations() {
    int j = super.getChangingConfigurations();
    if (this.mState != null) {
      int k = this.mState.getChangingConfigurations();
      return k | j | this.mDrawable.getChangingConfigurations();
    } 
    int i = 0;
    return i | j | this.mDrawable.getChangingConfigurations();
  }
  
  @Nullable
  public Drawable.ConstantState getConstantState() {
    if (this.mState != null && this.mState.canConstantState()) {
      this.mState.mChangingConfigurations = getChangingConfigurations();
      return this.mState;
    } 
    return null;
  }
  
  public Drawable getCurrent() {
    return this.mDrawable.getCurrent();
  }
  
  public int getIntrinsicHeight() {
    return this.mDrawable.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth() {
    return this.mDrawable.getIntrinsicWidth();
  }
  
  public int getMinimumHeight() {
    return this.mDrawable.getMinimumHeight();
  }
  
  public int getMinimumWidth() {
    return this.mDrawable.getMinimumWidth();
  }
  
  public int getOpacity() {
    return this.mDrawable.getOpacity();
  }
  
  public boolean getPadding(Rect paramRect) {
    return this.mDrawable.getPadding(paramRect);
  }
  
  public int[] getState() {
    return this.mDrawable.getState();
  }
  
  public Region getTransparentRegion() {
    return this.mDrawable.getTransparentRegion();
  }
  
  public final Drawable getWrappedDrawable() {
    return this.mDrawable;
  }
  
  public void invalidateDrawable(Drawable paramDrawable) {
    invalidateSelf();
  }
  
  protected boolean isCompatTintEnabled() {
    return true;
  }
  
  public boolean isStateful() {
    ColorStateList colorStateList;
    if (isCompatTintEnabled() && this.mState != null) {
      colorStateList = this.mState.mTint;
    } else {
      colorStateList = null;
    } 
    return ((colorStateList != null && colorStateList.isStateful()) || this.mDrawable.isStateful());
  }
  
  public Drawable mutate() {
    if (!this.mMutated && super.mutate() == this) {
      this.mState = mutateConstantState();
      if (this.mDrawable != null)
        this.mDrawable.mutate(); 
      if (this.mState != null) {
        Drawable.ConstantState constantState;
        DrawableWrapperGingerbread$DrawableWrapperState drawableWrapperGingerbread$DrawableWrapperState = this.mState;
        if (this.mDrawable != null) {
          constantState = this.mDrawable.getConstantState();
        } else {
          constantState = null;
        } 
        drawableWrapperGingerbread$DrawableWrapperState.mDrawableState = constantState;
      } 
      this.mMutated = true;
    } 
    return this;
  }
  
  @NonNull
  DrawableWrapperGingerbread$DrawableWrapperState mutateConstantState() {
    return new DrawableWrapperGingerbread$DrawableWrapperStateBase(this.mState, null);
  }
  
  protected Drawable newDrawableFromState(@NonNull Drawable.ConstantState paramConstantState, @Nullable Resources paramResources) {
    return paramConstantState.newDrawable(paramResources);
  }
  
  protected void onBoundsChange(Rect paramRect) {
    if (this.mDrawable != null)
      this.mDrawable.setBounds(paramRect); 
  }
  
  protected boolean onLevelChange(int paramInt) {
    return this.mDrawable.setLevel(paramInt);
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong) {
    scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt) {
    this.mDrawable.setAlpha(paramInt);
  }
  
  public void setChangingConfigurations(int paramInt) {
    this.mDrawable.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {
    this.mDrawable.setColorFilter(paramColorFilter);
  }
  
  public void setDither(boolean paramBoolean) {
    this.mDrawable.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean) {
    this.mDrawable.setFilterBitmap(paramBoolean);
  }
  
  public boolean setState(int[] paramArrayOfint) {
    boolean bool = this.mDrawable.setState(paramArrayOfint);
    return (updateTint(paramArrayOfint) || bool);
  }
  
  public void setTint(int paramInt) {
    setTintList(ColorStateList.valueOf(paramInt));
  }
  
  public void setTintList(ColorStateList paramColorStateList) {
    this.mState.mTint = paramColorStateList;
    updateTint(getState());
  }
  
  public void setTintMode(PorterDuff.Mode paramMode) {
    this.mState.mTintMode = paramMode;
    updateTint(getState());
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2) {
    return (super.setVisible(paramBoolean1, paramBoolean2) || this.mDrawable.setVisible(paramBoolean1, paramBoolean2));
  }
  
  public final void setWrappedDrawable(Drawable paramDrawable) {
    if (this.mDrawable != null)
      this.mDrawable.setCallback(null); 
    this.mDrawable = paramDrawable;
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
      setVisible(paramDrawable.isVisible(), true);
      setState(paramDrawable.getState());
      setLevel(paramDrawable.getLevel());
      setBounds(paramDrawable.getBounds());
      if (this.mState != null)
        this.mState.mDrawableState = paramDrawable.getConstantState(); 
    } 
    invalidateSelf();
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable) {
    unscheduleSelf(paramRunnable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableWrapperGingerbread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */