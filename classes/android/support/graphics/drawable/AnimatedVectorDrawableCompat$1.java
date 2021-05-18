package android.support.graphics.drawable;

import android.graphics.drawable.Drawable;

class AnimatedVectorDrawableCompat$1 implements Drawable.Callback {
  public void invalidateDrawable(Drawable paramDrawable) {
    AnimatedVectorDrawableCompat.this.invalidateSelf();
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong) {
    AnimatedVectorDrawableCompat.this.scheduleSelf(paramRunnable, paramLong);
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable) {
    AnimatedVectorDrawableCompat.this.unscheduleSelf(paramRunnable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\AnimatedVectorDrawableCompat$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */