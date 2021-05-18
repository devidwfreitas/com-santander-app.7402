package android.support.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

class VectorDrawableCompat$VectorDrawableDelegateState extends Drawable.ConstantState {
  private final Drawable.ConstantState mDelegateState;
  
  public VectorDrawableCompat$VectorDrawableDelegateState(Drawable.ConstantState paramConstantState) {
    this.mDelegateState = paramConstantState;
  }
  
  public boolean canApplyTheme() {
    return this.mDelegateState.canApplyTheme();
  }
  
  public int getChangingConfigurations() {
    return this.mDelegateState.getChangingConfigurations();
  }
  
  public Drawable newDrawable() {
    VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
    vectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable();
    return vectorDrawableCompat;
  }
  
  public Drawable newDrawable(Resources paramResources) {
    VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
    vectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable(paramResources);
    return vectorDrawableCompat;
  }
  
  public Drawable newDrawable(Resources paramResources, Resources.Theme paramTheme) {
    VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
    vectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable(paramResources, paramTheme);
    return vectorDrawableCompat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\VectorDrawableCompat$VectorDrawableDelegateState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */