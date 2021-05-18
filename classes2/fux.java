import java.io.Serializable;
import java.util.Vector;

public class fux extends fvu implements Serializable {
  private static final long a = 1L;
  
  private Vector<fuw> b = null;
  
  public fux() {
    this.b = new Vector<fuw>();
  }
  
  public Vector<fuw> a() {
    return this.b;
  }
  
  public void a(Vector<fuw> paramVector) {
    this.b = paramVector;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fux.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */