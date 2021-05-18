import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;

public class cks implements ckq {
  protected Path a = new Path();
  
  public void a(Canvas paramCanvas, ciu paramciu, clh paramclh, float paramFloat1, float paramFloat2, Paint paramPaint) {
    float f1 = paramciu.b();
    float f2 = f1 / 2.0F;
    float f3 = (f1 - clg.a(paramciu.d()) * 2.0F) / 2.0F;
    int i = paramciu.e();
    paramPaint.setStyle(Paint.Style.FILL);
    Path path = this.a;
    path.reset();
    path.moveTo(paramFloat1, paramFloat2 - f2);
    path.lineTo(paramFloat1 + f2, paramFloat2 + f2);
    path.lineTo(paramFloat1 - f2, paramFloat2 + f2);
    if (f1 > 0.0D) {
      path.lineTo(paramFloat1, paramFloat2 - f2);
      path.moveTo(paramFloat1 - f2 + f3, paramFloat2 + f2 - f3);
      path.lineTo(paramFloat1 + f2 - f3, paramFloat2 + f2 - f3);
      path.lineTo(paramFloat1, paramFloat2 - f2 + f3);
      path.lineTo(paramFloat1 - f2 + f3, paramFloat2 + f2 - f3);
    } 
    path.close();
    paramCanvas.drawPath(path, paramPaint);
    path.reset();
    if (f1 > 0.0D && i != 1122867) {
      paramPaint.setColor(i);
      path.moveTo(paramFloat1, paramFloat2 - f2 + f3);
      path.lineTo(paramFloat1 + f2 - f3, paramFloat2 + f2 - f3);
      path.lineTo(paramFloat1 - f2 + f3, f2 + paramFloat2 - f3);
      path.close();
      paramCanvas.drawPath(path, paramPaint);
      path.reset();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */