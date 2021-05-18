import android.graphics.PointF;

public class bca implements bcd {
  private final String a;
  
  private final bbu<PointF, PointF> b;
  
  private final bbc c;
  
  private bca(String paramString, bbu<PointF, PointF> parambbu, bbc parambbc) {
    this.a = paramString;
    this.b = parambbu;
    this.c = parambbc;
  }
  
  public aye a(awu paramawu, bdy parambdy) {
    return new ayh(paramawu, parambdy, this);
  }
  
  public String a() {
    return this.a;
  }
  
  public bbu<PointF, PointF> b() {
    return this.b;
  }
  
  public bbc c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */