import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.PathEffect;

public abstract class ckb extends cjn {
  private Path a = new Path();
  
  public ckb(cdq paramcdq, clh paramclh) {
    super(paramcdq, paramclh);
  }
  
  protected void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, cir paramcir) {
    this.i.setColor(paramcir.j());
    this.i.setStrokeWidth(paramcir.ae());
    this.i.setPathEffect((PathEffect)paramcir.ah());
    if (paramcir.ac()) {
      this.a.reset();
      this.a.moveTo(paramFloat1, this.s.f());
      this.a.lineTo(paramFloat1, this.s.i());
      paramCanvas.drawPath(this.a, this.i);
    } 
    if (paramcir.ad()) {
      this.a.reset();
      this.a.moveTo(this.s.g(), paramFloat2);
      this.a.lineTo(this.s.h(), paramFloat2);
      paramCanvas.drawPath(this.a, this.i);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */