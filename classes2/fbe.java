import android.graphics.Canvas;
import android.view.animation.Interpolator;

class fbe implements fcb {
  fbe(fba paramfba, Interpolator paramInterpolator, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void a(Canvas paramCanvas, float paramFloat) {
    fba.a(this.f).a(paramCanvas, paramFloat);
    paramCanvas.rotate(this.a.getInterpolation(paramFloat) * (this.b - this.c) + this.c, this.d, this.e);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fbe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */