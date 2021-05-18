import java.io.Serializable;
import java.util.Vector;

public class ftn extends fvu implements Serializable {
  private static final long a = 1L;
  
  private Vector<ftk> b = new Vector<ftk>();
  
  private String c;
  
  public Vector<ftk> a() {
    return this.b;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public void a(Vector<ftk> paramVector) {
    this.b = paramVector;
  }
  
  public String b() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ftn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */