import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;

class cjz {
  private Path b = new Path();
  
  private Bitmap[] c;
  
  private cjz(cjx paramcjx) {}
  
  protected Bitmap a(int paramInt) {
    return this.c[paramInt % this.c.length];
  }
  
  protected void a(cip paramcip, boolean paramBoolean1, boolean paramBoolean2) {
    int j = paramcip.S();
    float f1 = paramcip.d();
    float f2 = paramcip.e();
    for (int i = 0; i < j; i++) {
      Bitmap.Config config = Bitmap.Config.ARGB_4444;
      Bitmap bitmap = Bitmap.createBitmap((int)(f1 * 2.1D), (int)(f1 * 2.1D), config);
      Canvas canvas = new Canvas(bitmap);
      this.c[i] = bitmap;
      this.a.h.setColor(paramcip.a(i));
      if (paramBoolean2) {
        this.b.reset();
        this.b.addCircle(f1, f1, f1, Path.Direction.CW);
        this.b.addCircle(f1, f1, f2, Path.Direction.CCW);
        canvas.drawPath(this.b, this.a.h);
      } else {
        canvas.drawCircle(f1, f1, f1, this.a.h);
        if (paramBoolean1)
          canvas.drawCircle(f1, f1, f2, this.a.b); 
      } 
    } 
  }
  
  protected boolean a(cip paramcip) {
    int i = paramcip.S();
    if (this.c == null) {
      this.c = new Bitmap[i];
      return true;
    } 
    if (this.c.length != i) {
      this.c = new Bitmap[i];
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */