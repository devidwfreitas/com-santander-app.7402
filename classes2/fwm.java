import java.io.Serializable;
import java.util.Vector;

public class fwm extends fvu implements Serializable {
  private static final long a = 1L;
  
  private Double b;
  
  private Double c;
  
  private Vector<fwn> d;
  
  private String e;
  
  private String f;
  
  public Double a() {
    return this.b;
  }
  
  public void a(Double paramDouble) {
    this.b = paramDouble;
  }
  
  public void a(Double paramDouble1, Double paramDouble2) {
    this.b = paramDouble1;
    this.c = paramDouble2;
  }
  
  public void a(String paramString) {
    this.e = paramString;
  }
  
  public void a(Vector<fwn> paramVector) {
    this.d = paramVector;
  }
  
  public Double b() {
    return this.c;
  }
  
  public void b(Double paramDouble) {
    this.c = paramDouble;
  }
  
  public void b(String paramString) {
    this.f = paramString;
  }
  
  public Vector<fwn> c() {
    return this.d;
  }
  
  public String d() {
    return this.e;
  }
  
  public String e() {
    return this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fwm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */