import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;

public abstract class cka extends ckb {
  public cka(cdq paramcdq, clh paramclh) {
    super(paramcdq, paramclh);
  }
  
  private boolean b() {
    return (clg.d() >= 18);
  }
  
  protected void a(Canvas paramCanvas, Path paramPath, int paramInt1, int paramInt2) {
    paramInt1 = paramInt2 << 24 | 0xFFFFFF & paramInt1;
    if (b()) {
      paramInt2 = paramCanvas.save();
      paramCanvas.clipPath(paramPath);
      paramCanvas.drawColor(paramInt1);
      paramCanvas.restoreToCount(paramInt2);
      return;
    } 
    Paint.Style style = this.h.getStyle();
    paramInt2 = this.h.getColor();
    this.h.setStyle(Paint.Style.FILL);
    this.h.setColor(paramInt1);
    paramCanvas.drawPath(paramPath, this.h);
    this.h.setColor(paramInt2);
    this.h.setStyle(style);
  }
  
  protected void a(Canvas paramCanvas, Path paramPath, Drawable paramDrawable) {
    if (b()) {
      int i = paramCanvas.save();
      paramCanvas.clipPath(paramPath);
      paramDrawable.setBounds((int)this.s.g(), (int)this.s.f(), (int)this.s.h(), (int)this.s.i());
      paramDrawable.draw(paramCanvas);
      paramCanvas.restoreToCount(i);
      return;
    } 
    throw new RuntimeException("Fill-drawables not (yet) supported below API level 18, this code was run on API level " + clg.d() + ".");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cka.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */