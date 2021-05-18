package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.shapes.OvalShape;

class CircleImageView$OvalShadow extends OvalShape {
  private RadialGradient mRadialGradient;
  
  private Paint mShadowPaint = new Paint();
  
  CircleImageView$OvalShadow(int paramInt) {
    paramCircleImageView.mShadowRadius = paramInt;
    updateRadialGradient((int)rect().width());
  }
  
  private void updateRadialGradient(int paramInt) {
    float f1 = (paramInt / 2);
    float f2 = (paramInt / 2);
    float f3 = CircleImageView.this.mShadowRadius;
    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
    this.mRadialGradient = new RadialGradient(f1, f2, f3, new int[] { 1023410176, 0 }, null, tileMode);
    this.mShadowPaint.setShader((Shader)this.mRadialGradient);
  }
  
  public void draw(Canvas paramCanvas, Paint paramPaint) {
    int i = CircleImageView.this.getWidth();
    int j = CircleImageView.this.getHeight();
    paramCanvas.drawCircle((i / 2), (j / 2), (i / 2), this.mShadowPaint);
    paramCanvas.drawCircle((i / 2), (j / 2), (i / 2 - CircleImageView.this.mShadowRadius), paramPaint);
  }
  
  protected void onResize(float paramFloat1, float paramFloat2) {
    super.onResize(paramFloat1, paramFloat2);
    updateRadialGradient((int)paramFloat1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\CircleImageView$OvalShadow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */