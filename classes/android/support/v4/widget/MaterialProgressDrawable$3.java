package android.support.v4.widget;

import android.graphics.drawable.Drawable;

class MaterialProgressDrawable$3 implements Drawable.Callback {
  public void invalidateDrawable(Drawable paramDrawable) {
    MaterialProgressDrawable.this.invalidateSelf();
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong) {
    MaterialProgressDrawable.this.scheduleSelf(paramRunnable, paramLong);
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable) {
    MaterialProgressDrawable.this.unscheduleSelf(paramRunnable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\MaterialProgressDrawable$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */