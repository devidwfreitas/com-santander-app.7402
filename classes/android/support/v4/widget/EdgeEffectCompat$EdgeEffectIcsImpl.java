package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;

class EdgeEffectCompat$EdgeEffectIcsImpl implements EdgeEffectCompat$EdgeEffectImpl {
  public boolean draw(Object paramObject, Canvas paramCanvas) {
    return EdgeEffectCompatIcs.draw(paramObject, paramCanvas);
  }
  
  public void finish(Object paramObject) {
    EdgeEffectCompatIcs.finish(paramObject);
  }
  
  public boolean isFinished(Object paramObject) {
    return EdgeEffectCompatIcs.isFinished(paramObject);
  }
  
  public Object newEdgeEffect(Context paramContext) {
    return EdgeEffectCompatIcs.newEdgeEffect(paramContext);
  }
  
  public boolean onAbsorb(Object paramObject, int paramInt) {
    return EdgeEffectCompatIcs.onAbsorb(paramObject, paramInt);
  }
  
  public boolean onPull(Object paramObject, float paramFloat) {
    return EdgeEffectCompatIcs.onPull(paramObject, paramFloat);
  }
  
  public boolean onPull(Object paramObject, float paramFloat1, float paramFloat2) {
    return EdgeEffectCompatIcs.onPull(paramObject, paramFloat1);
  }
  
  public boolean onRelease(Object paramObject) {
    return EdgeEffectCompatIcs.onRelease(paramObject);
  }
  
  public void setSize(Object paramObject, int paramInt1, int paramInt2) {
    EdgeEffectCompatIcs.setSize(paramObject, paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\EdgeEffectCompat$EdgeEffectIcsImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */