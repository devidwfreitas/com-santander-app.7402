import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public class bed extends bdy {
  private final Paint e = new Paint(3);
  
  private final Rect f = new Rect();
  
  private final Rect g = new Rect();
  
  private final float h;
  
  bed(awu paramawu, bee parambee, float paramFloat) {
    super(paramawu, parambee);
    this.h = paramFloat;
  }
  
  @Nullable
  private Bitmap f() {
    String str = this.c.g();
    return this.b.b(str);
  }
  
  public void a(RectF paramRectF, Matrix paramMatrix) {
    super.a(paramRectF, paramMatrix);
    Bitmap bitmap = f();
    if (bitmap != null) {
      paramRectF.set(paramRectF.left, paramRectF.top, Math.min(paramRectF.right, bitmap.getWidth()), Math.min(paramRectF.bottom, bitmap.getHeight()));
      this.a.mapRect(paramRectF);
    } 
  }
  
  public void a(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {
    this.e.setColorFilter(paramColorFilter);
  }
  
  public void b(@NonNull Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    Bitmap bitmap = f();
    if (bitmap == null)
      return; 
    this.e.setAlpha(paramInt);
    paramCanvas.save();
    paramCanvas.concat(paramMatrix);
    this.f.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
    this.g.set(0, 0, (int)(bitmap.getWidth() * this.h), (int)(bitmap.getHeight() * this.h));
    paramCanvas.drawBitmap(bitmap, this.f, this.g, this.e);
    paramCanvas.restore();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bed.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */