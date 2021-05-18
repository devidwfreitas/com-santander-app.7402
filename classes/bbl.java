import android.graphics.PointF;

public class bbl implements bbu<PointF, PointF> {
  private final bao a;
  
  private final bao b;
  
  bbl(bao parambao1, bao parambao2) {
    this.a = parambao1;
    this.b = parambao2;
  }
  
  public ayy<PointF, PointF> a() {
    return new azn(this.a.a(), this.b.a());
  }
  
  public boolean a_() {
    return (this.a.a_() || this.b.a_());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bbl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */