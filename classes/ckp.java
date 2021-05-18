import android.graphics.Canvas;
import android.graphics.Paint;

public class ckp implements ckq {
  public void a(Canvas paramCanvas, ciu paramciu, clh paramclh, float paramFloat1, float paramFloat2, Paint paramPaint) {
    float f = paramciu.b() / 2.0F;
    paramPaint.setStyle(Paint.Style.STROKE);
    paramPaint.setStrokeWidth(clg.a(1.0F));
    paramCanvas.drawLine(paramFloat1 - f, paramFloat2, paramFloat1 + f, paramFloat2, paramPaint);
    paramCanvas.drawLine(paramFloat1, paramFloat2 - f, paramFloat1, paramFloat2 + f, paramPaint);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */