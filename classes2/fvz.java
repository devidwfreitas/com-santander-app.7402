import java.io.Serializable;
import java.util.Vector;

public class fvz extends fvu implements Serializable {
  private static final long a = 1L;
  
  private Vector<fvx> b = null;
  
  public fvz() {
    a(new Vector<fvx>());
  }
  
  public Vector<fvx> a() {
    return this.b;
  }
  
  public void a(Vector<fvx> paramVector) {
    this.b = paramVector;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fvz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */