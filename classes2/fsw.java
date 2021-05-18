import java.io.Serializable;
import java.util.Vector;

public class fsw extends fvu implements Serializable {
  private static final long a = 1L;
  
  private Vector<fuu> b = null;
  
  public fsw() {
    a(new Vector<fuu>());
  }
  
  public Vector<fuu> a() {
    return this.b;
  }
  
  public void a(Vector<fuu> paramVector) {
    this.b = paramVector;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fsw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */