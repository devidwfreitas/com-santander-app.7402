package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;

interface EdgeEffectCompat$EdgeEffectImpl {
  boolean draw(Object paramObject, Canvas paramCanvas);
  
  void finish(Object paramObject);
  
  boolean isFinished(Object paramObject);
  
  Object newEdgeEffect(Context paramContext);
  
  boolean onAbsorb(Object paramObject, int paramInt);
  
  boolean onPull(Object paramObject, float paramFloat);
  
  boolean onPull(Object paramObject, float paramFloat1, float paramFloat2);
  
  boolean onRelease(Object paramObject);
  
  void setSize(Object paramObject, int paramInt1, int paramInt2);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\EdgeEffectCompat$EdgeEffectImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */