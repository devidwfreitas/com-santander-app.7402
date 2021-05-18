import android.graphics.PointF;

public class bcy implements bcd {
  private final String a;
  
  private final bbu<PointF, PointF> b;
  
  private final bbc c;
  
  private final bao d;
  
  private bcy(String paramString, bbu<PointF, PointF> parambbu, bbc parambbc, bao parambao) {
    this.a = paramString;
    this.b = parambbu;
    this.c = parambbc;
    this.d = parambao;
  }
  
  public aye a(awu paramawu, bdy parambdy) {
    return new ays(paramawu, parambdy, this);
  }
  
  public String a() {
    return this.a;
  }
  
  public bao b() {
    return this.d;
  }
  
  public bbc c() {
    return this.c;
  }
  
  public bbu<PointF, PointF> d() {
    return this.b;
  }
  
  public String toString() {
    return "RectangleShape{cornerRadius=" + this.d.b() + ", position=" + this.b + ", size=" + this.c + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bcy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */