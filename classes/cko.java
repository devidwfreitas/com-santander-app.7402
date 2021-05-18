import android.graphics.Canvas;
import android.graphics.Paint;

public class cko implements ckq {
  public void a(Canvas paramCanvas, ciu paramciu, clh paramclh, float paramFloat1, float paramFloat2, Paint paramPaint) {
    float f1 = paramciu.b();
    float f2 = f1 / 2.0F;
    float f3 = clg.a(paramciu.d());
    float f4 = (f1 - 2.0F * f3) / 2.0F;
    float f5 = f4 / 2.0F;
    int i = paramciu.e();
    if (f1 > 0.0D) {
      paramPaint.setStyle(Paint.Style.STROKE);
      paramPaint.setStrokeWidth(f4);
      paramCanvas.drawCircle(paramFloat1, paramFloat2, f3 + f5, paramPaint);
      if (i != 1122867) {
        paramPaint.setStyle(Paint.Style.FILL);
        paramPaint.setColor(i);
        paramCanvas.drawCircle(paramFloat1, paramFloat2, f3, paramPaint);
      } 
      return;
    } 
    paramPaint.setStyle(Paint.Style.FILL);
    paramCanvas.drawCircle(paramFloat1, paramFloat2, f2, paramPaint);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */