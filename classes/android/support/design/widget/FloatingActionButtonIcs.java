package android.support.design.widget;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.view.ViewCompat;
import android.view.View;

@TargetApi(14)
@RequiresApi(14)
class FloatingActionButtonIcs extends FloatingActionButtonGingerbread {
  private float mRotation = this.mView.getRotation();
  
  FloatingActionButtonIcs(VisibilityAwareImageButton paramVisibilityAwareImageButton, ShadowViewDelegate paramShadowViewDelegate, ValueAnimatorCompat$Creator paramValueAnimatorCompat$Creator) {
    super(paramVisibilityAwareImageButton, paramShadowViewDelegate, paramValueAnimatorCompat$Creator);
  }
  
  private boolean shouldAnimateVisibilityChange() {
    return (ViewCompat.isLaidOut((View)this.mView) && !this.mView.isInEditMode());
  }
  
  private void updateFromViewRotation() {
    if (Build.VERSION.SDK_INT == 19)
      if (this.mRotation % 90.0F != 0.0F) {
        if (this.mView.getLayerType() != 1)
          this.mView.setLayerType(1, null); 
      } else if (this.mView.getLayerType() != 0) {
        this.mView.setLayerType(0, null);
      }  
    if (this.mShadowDrawable != null)
      this.mShadowDrawable.setRotation(-this.mRotation); 
    if (this.mBorderDrawable != null)
      this.mBorderDrawable.setRotation(-this.mRotation); 
  }
  
  void hide(@Nullable FloatingActionButtonImpl$InternalVisibilityChangedListener paramFloatingActionButtonImpl$InternalVisibilityChangedListener, boolean paramBoolean) {
    if (!isOrWillBeHidden()) {
      byte b;
      this.mView.animate().cancel();
      if (shouldAnimateVisibilityChange()) {
        this.mAnimState = 1;
        this.mView.animate().scaleX(0.0F).scaleY(0.0F).alpha(0.0F).setDuration(200L).setInterpolator((TimeInterpolator)AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR).setListener((Animator.AnimatorListener)new FloatingActionButtonIcs$1(this, paramBoolean, paramFloatingActionButtonImpl$InternalVisibilityChangedListener));
        return;
      } 
      VisibilityAwareImageButton visibilityAwareImageButton = this.mView;
      if (paramBoolean) {
        b = 8;
      } else {
        b = 4;
      } 
      visibilityAwareImageButton.internalSetVisibility(b, paramBoolean);
      if (paramFloatingActionButtonImpl$InternalVisibilityChangedListener != null) {
        paramFloatingActionButtonImpl$InternalVisibilityChangedListener.onHidden();
        return;
      } 
    } 
  }
  
  void onPreDraw() {
    float f = this.mView.getRotation();
    if (this.mRotation != f) {
      this.mRotation = f;
      updateFromViewRotation();
    } 
  }
  
  boolean requirePreDrawListener() {
    return true;
  }
  
  void show(@Nullable FloatingActionButtonImpl$InternalVisibilityChangedListener paramFloatingActionButtonImpl$InternalVisibilityChangedListener, boolean paramBoolean) {
    if (!isOrWillBeShown()) {
      this.mView.animate().cancel();
      if (shouldAnimateVisibilityChange()) {
        this.mAnimState = 2;
        if (this.mView.getVisibility() != 0) {
          this.mView.setAlpha(0.0F);
          this.mView.setScaleY(0.0F);
          this.mView.setScaleX(0.0F);
        } 
        this.mView.animate().scaleX(1.0F).scaleY(1.0F).alpha(1.0F).setDuration(200L).setInterpolator((TimeInterpolator)AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR).setListener((Animator.AnimatorListener)new FloatingActionButtonIcs$2(this, paramBoolean, paramFloatingActionButtonImpl$InternalVisibilityChangedListener));
        return;
      } 
      this.mView.internalSetVisibility(0, paramBoolean);
      this.mView.setAlpha(1.0F);
      this.mView.setScaleY(1.0F);
      this.mView.setScaleX(1.0F);
      if (paramFloatingActionButtonImpl$InternalVisibilityChangedListener != null) {
        paramFloatingActionButtonImpl$InternalVisibilityChangedListener.onShown();
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\FloatingActionButtonIcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */