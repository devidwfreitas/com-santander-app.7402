import java.io.Serializable;
import java.util.Vector;

public class fva extends fvu implements Serializable {
  private static final long a = 1L;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private fvl f;
  
  private Vector<fvc> g;
  
  public static long a() {
    return 1L;
  }
  
  public void a(fvl paramfvl) {
    this.f = paramfvl;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(Vector<fvc> paramVector) {
    this.g = paramVector;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.d = paramString;
  }
  
  public String d() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.e = paramString;
  }
  
  public String e() {
    return this.e;
  }
  
  public fvl f() {
    return this.f;
  }
  
  public Vector<fvc> g() {
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fva.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */