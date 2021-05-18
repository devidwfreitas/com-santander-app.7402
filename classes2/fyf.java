import java.io.Serializable;
import java.util.ArrayList;

public class fyf extends fvu implements Serializable {
  private static final long a = 1L;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private ArrayList<fyk> e = new ArrayList<fyk>();
  
  public ArrayList<fyk> a() {
    return this.e;
  }
  
  public void a(fyk paramfyk) {
    this.e.add(paramfyk);
  }
  
  public void a(String paramString) {
    this.b = paramString;
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fyf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */