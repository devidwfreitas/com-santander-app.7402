package android.support.graphics.drawable;

import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;

public abstract class Animatable2Compat$AnimationCallback {
  Animatable2.AnimationCallback mPlatformCallback;
  
  @RequiresApi(23)
  Animatable2.AnimationCallback getPlatformCallback() {
    if (this.mPlatformCallback == null)
      this.mPlatformCallback = new Animatable2Compat$AnimationCallback$1(this); 
    return this.mPlatformCallback;
  }
  
  public void onAnimationEnd(Drawable paramDrawable) {}
  
  public void onAnimationStart(Drawable paramDrawable) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\Animatable2Compat$AnimationCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */