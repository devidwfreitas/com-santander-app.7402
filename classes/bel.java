import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.annotation.Nullable;

public class bel extends bdy {
  private final RectF e = new RectF();
  
  private final Paint f = new Paint();
  
  private final bee g;
  
  bel(awu paramawu, bee parambee) {
    super(paramawu, parambee);
    this.g = parambee;
    this.f.setAlpha(0);
    this.f.setStyle(Paint.Style.FILL);
    this.f.setColor(parambee.p());
  }
  
  private void a(Matrix paramMatrix) {
    this.e.set(0.0F, 0.0F, this.g.r(), this.g.q());
    paramMatrix.mapRect(this.e);
  }
  
  public void a(RectF paramRectF, Matrix paramMatrix) {
    super.a(paramRectF, paramMatrix);
    a(this.a);
    paramRectF.set(this.e);
  }
  
  public void a(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {
    this.f.setColorFilter(paramColorFilter);
  }
  
  public void b(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    int i = Color.alpha(this.g.p());
    if (i != 0) {
      float f1 = paramInt / 255.0F;
      float f2 = i / 255.0F;
      paramInt = (int)(((Integer)this.d.a().b()).intValue() * f2 / 100.0F * f1 * 255.0F);
      this.f.setAlpha(paramInt);
      if (paramInt > 0) {
        a(paramMatrix);
        paramCanvas.drawRect(this.e, this.f);
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */