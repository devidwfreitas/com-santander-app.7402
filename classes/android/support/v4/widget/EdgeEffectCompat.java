package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;

public final class EdgeEffectCompat {
  private static final EdgeEffectCompat$EdgeEffectImpl IMPL = new EdgeEffectCompat$BaseEdgeEffectImpl();
  
  private Object mEdgeEffect;
  
  public EdgeEffectCompat(Context paramContext) {
    this.mEdgeEffect = IMPL.newEdgeEffect(paramContext);
  }
  
  public boolean draw(Canvas paramCanvas) {
    return IMPL.draw(this.mEdgeEffect, paramCanvas);
  }
  
  public void finish() {
    IMPL.finish(this.mEdgeEffect);
  }
  
  public boolean isFinished() {
    return IMPL.isFinished(this.mEdgeEffect);
  }
  
  public boolean onAbsorb(int paramInt) {
    return IMPL.onAbsorb(this.mEdgeEffect, paramInt);
  }
  
  @Deprecated
  public boolean onPull(float paramFloat) {
    return IMPL.onPull(this.mEdgeEffect, paramFloat);
  }
  
  public boolean onPull(float paramFloat1, float paramFloat2) {
    return IMPL.onPull(this.mEdgeEffect, paramFloat1, paramFloat2);
  }
  
  public boolean onRelease() {
    return IMPL.onRelease(this.mEdgeEffect);
  }
  
  public void setSize(int paramInt1, int paramInt2) {
    IMPL.setSize(this.mEdgeEffect, paramInt1, paramInt2);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 21) {
      IMPL = new EdgeEffectCompat$EdgeEffectLollipopImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new EdgeEffectCompat$EdgeEffectIcsImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\EdgeEffectCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */