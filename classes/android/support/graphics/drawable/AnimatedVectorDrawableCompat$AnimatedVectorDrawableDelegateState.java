package android.support.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

class AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState extends Drawable.ConstantState {
  private final Drawable.ConstantState mDelegateState;
  
  public AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState(Drawable.ConstantState paramConstantState) {
    this.mDelegateState = paramConstantState;
  }
  
  public boolean canApplyTheme() {
    return this.mDelegateState.canApplyTheme();
  }
  
  public int getChangingConfigurations() {
    return this.mDelegateState.getChangingConfigurations();
  }
  
  public Drawable newDrawable() {
    AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
    animatedVectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable();
    animatedVectorDrawableCompat.mDelegateDrawable.setCallback(animatedVectorDrawableCompat.mCallback);
    return animatedVectorDrawableCompat;
  }
  
  public Drawable newDrawable(Resources paramResources) {
    AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
    animatedVectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable(paramResources);
    animatedVectorDrawableCompat.mDelegateDrawable.setCallback(animatedVectorDrawableCompat.mCallback);
    return animatedVectorDrawableCompat;
  }
  
  public Drawable newDrawable(Resources paramResources, Resources.Theme paramTheme) {
    AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
    animatedVectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable(paramResources, paramTheme);
    animatedVectorDrawableCompat.mDelegateDrawable.setCallback(animatedVectorDrawableCompat.mCallback);
    return animatedVectorDrawableCompat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */