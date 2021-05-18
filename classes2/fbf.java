import android.graphics.Canvas;
import android.view.animation.Interpolator;

class fbf implements fcb {
  fbf(fba paramfba, Interpolator paramInterpolator, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void a(Canvas paramCanvas, float paramFloat) {
    fba.a(this.f).a(paramCanvas, paramFloat);
    paramFloat = this.a.getInterpolation(paramFloat);
    paramCanvas.translate((this.b - this.c) * paramFloat + this.c, paramFloat * (this.d - this.e) + this.e);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fbf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */