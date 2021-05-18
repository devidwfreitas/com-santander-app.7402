package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.R;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;

class FloatingActionButtonGingerbread extends FloatingActionButtonImpl {
  ShadowDrawableWrapper mShadowDrawable;
  
  private final StateListAnimator mStateListAnimator = new StateListAnimator();
  
  FloatingActionButtonGingerbread(VisibilityAwareImageButton paramVisibilityAwareImageButton, ShadowViewDelegate paramShadowViewDelegate, ValueAnimatorCompat$Creator paramValueAnimatorCompat$Creator) {
    super(paramVisibilityAwareImageButton, paramShadowViewDelegate, paramValueAnimatorCompat$Creator);
    this.mStateListAnimator.addState(PRESSED_ENABLED_STATE_SET, createAnimator(new FloatingActionButtonGingerbread$ElevateToTranslationZAnimation(this)));
    this.mStateListAnimator.addState(FOCUSED_ENABLED_STATE_SET, createAnimator(new FloatingActionButtonGingerbread$ElevateToTranslationZAnimation(this)));
    this.mStateListAnimator.addState(ENABLED_STATE_SET, createAnimator(new FloatingActionButtonGingerbread$ResetElevationAnimation(this)));
    this.mStateListAnimator.addState(EMPTY_STATE_SET, createAnimator(new FloatingActionButtonGingerbread$DisabledElevationAnimation(this)));
  }
  
  private ValueAnimatorCompat createAnimator(@NonNull FloatingActionButtonGingerbread$ShadowAnimatorImpl paramFloatingActionButtonGingerbread$ShadowAnimatorImpl) {
    ValueAnimatorCompat valueAnimatorCompat = this.mAnimatorCreator.createAnimator();
    valueAnimatorCompat.setInterpolator(ANIM_INTERPOLATOR);
    valueAnimatorCompat.setDuration(100L);
    valueAnimatorCompat.addListener(paramFloatingActionButtonGingerbread$ShadowAnimatorImpl);
    valueAnimatorCompat.addUpdateListener(paramFloatingActionButtonGingerbread$ShadowAnimatorImpl);
    valueAnimatorCompat.setFloatValues(0.0F, 1.0F);
    return valueAnimatorCompat;
  }
  
  private static ColorStateList createColorStateList(int paramInt) {
    return new ColorStateList(new int[][] { FOCUSED_ENABLED_STATE_SET, PRESSED_ENABLED_STATE_SET, {} }, new int[] { paramInt, paramInt, 0 });
  }
  
  float getElevation() {
    return this.mElevation;
  }
  
  void getPadding(Rect paramRect) {
    this.mShadowDrawable.getPadding(paramRect);
  }
  
  void hide(@Nullable FloatingActionButtonImpl$InternalVisibilityChangedListener paramFloatingActionButtonImpl$InternalVisibilityChangedListener, boolean paramBoolean) {
    if (isOrWillBeHidden())
      return; 
    this.mAnimState = 1;
    Animation animation = AnimationUtils.loadAnimation(this.mView.getContext(), R.anim.design_fab_out);
    animation.setInterpolator(AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
    animation.setDuration(200L);
    animation.setAnimationListener(new FloatingActionButtonGingerbread$1(this, paramBoolean, paramFloatingActionButtonImpl$InternalVisibilityChangedListener));
    this.mView.startAnimation(animation);
  }
  
  void jumpDrawableToCurrentState() {
    this.mStateListAnimator.jumpToCurrentState();
  }
  
  void onCompatShadowChanged() {}
  
  void onDrawableStateChanged(int[] paramArrayOfint) {
    this.mStateListAnimator.setState(paramArrayOfint);
  }
  
  void onElevationsChanged(float paramFloat1, float paramFloat2) {
    if (this.mShadowDrawable != null) {
      this.mShadowDrawable.setShadowSize(paramFloat1, this.mPressedTranslationZ + paramFloat1);
      updatePadding();
    } 
  }
  
  void setBackgroundDrawable(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2) {
    Drawable[] arrayOfDrawable;
    this.mShapeDrawable = DrawableCompat.wrap((Drawable)createShapeDrawable());
    DrawableCompat.setTintList(this.mShapeDrawable, paramColorStateList);
    if (paramMode != null)
      DrawableCompat.setTintMode(this.mShapeDrawable, paramMode); 
    this.mRippleDrawable = DrawableCompat.wrap((Drawable)createShapeDrawable());
    DrawableCompat.setTintList(this.mRippleDrawable, createColorStateList(paramInt1));
    if (paramInt2 > 0) {
      this.mBorderDrawable = createBorderDrawable(paramInt2, paramColorStateList);
      arrayOfDrawable = new Drawable[3];
      arrayOfDrawable[0] = this.mBorderDrawable;
      arrayOfDrawable[1] = this.mShapeDrawable;
      arrayOfDrawable[2] = this.mRippleDrawable;
    } else {
      this.mBorderDrawable = null;
      arrayOfDrawable = new Drawable[2];
      arrayOfDrawable[0] = this.mShapeDrawable;
      arrayOfDrawable[1] = this.mRippleDrawable;
    } 
    this.mContentBackground = (Drawable)new LayerDrawable(arrayOfDrawable);
    this.mShadowDrawable = new ShadowDrawableWrapper(this.mView.getContext(), this.mContentBackground, this.mShadowViewDelegate.getRadius(), this.mElevation, this.mElevation + this.mPressedTranslationZ);
    this.mShadowDrawable.setAddPaddingForCorners(false);
    this.mShadowViewDelegate.setBackgroundDrawable((Drawable)this.mShadowDrawable);
  }
  
  void setBackgroundTintList(ColorStateList paramColorStateList) {
    if (this.mShapeDrawable != null)
      DrawableCompat.setTintList(this.mShapeDrawable, paramColorStateList); 
    if (this.mBorderDrawable != null)
      this.mBorderDrawable.setBorderTint(paramColorStateList); 
  }
  
  void setBackgroundTintMode(PorterDuff.Mode paramMode) {
    if (this.mShapeDrawable != null)
      DrawableCompat.setTintMode(this.mShapeDrawable, paramMode); 
  }
  
  void setRippleColor(int paramInt) {
    if (this.mRippleDrawable != null)
      DrawableCompat.setTintList(this.mRippleDrawable, createColorStateList(paramInt)); 
  }
  
  void show(@Nullable FloatingActionButtonImpl$InternalVisibilityChangedListener paramFloatingActionButtonImpl$InternalVisibilityChangedListener, boolean paramBoolean) {
    if (isOrWillBeShown())
      return; 
    this.mAnimState = 2;
    this.mView.internalSetVisibility(0, paramBoolean);
    Animation animation = AnimationUtils.loadAnimation(this.mView.getContext(), R.anim.design_fab_in);
    animation.setDuration(200L);
    animation.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
    animation.setAnimationListener(new FloatingActionButtonGingerbread$2(this, paramFloatingActionButtonImpl$InternalVisibilityChangedListener));
    this.mView.startAnimation(animation);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\FloatingActionButtonGingerbread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */