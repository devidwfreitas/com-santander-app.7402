import android.graphics.Canvas;
import android.view.animation.Interpolator;

class fbd implements fcb {
  fbd(fba paramfba, Interpolator paramInterpolator, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6) {}
  
  public void a(Canvas paramCanvas, float paramFloat) {
    fba.a(this.h).a(paramCanvas, paramFloat);
    paramFloat = this.a.getInterpolation(paramFloat);
    paramCanvas.scale((this.b - this.c) * paramFloat + this.c, paramFloat * (this.d - this.e) + this.e, this.f, this.g);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fbd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */