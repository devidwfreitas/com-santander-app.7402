import java.util.List;

public class ckz extends cld {
  private static clc<ckz> c = clc.a(64, new ckz(0.0D, 0.0D));
  
  public double a;
  
  public double b;
  
  static {
    c.a(0.5F);
  }
  
  private ckz(double paramDouble1, double paramDouble2) {
    this.a = paramDouble1;
    this.b = paramDouble2;
  }
  
  public static ckz a(double paramDouble1, double paramDouble2) {
    ckz ckz1 = c.c();
    ckz1.a = paramDouble1;
    ckz1.b = paramDouble2;
    return ckz1;
  }
  
  public static void a(ckz paramckz) {
    c.a(paramckz);
  }
  
  public static void a(List<ckz> paramList) {
    c.a(paramList);
  }
  
  protected cld b() {
    return new ckz(0.0D, 0.0D);
  }
  
  public String toString() {
    return "MPPointD, x: " + this.a + ", y: " + this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */