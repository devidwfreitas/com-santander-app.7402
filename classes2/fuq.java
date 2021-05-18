import java.io.Serializable;
import java.util.ArrayList;

public class fuq extends fvu implements Serializable {
  private static final long a = 1L;
  
  private ArrayList<fur> b = new ArrayList<fur>();
  
  public ArrayList<fur> a() {
    return this.b;
  }
  
  public void a(fur paramfur) {
    if (this.b != null)
      this.b = new ArrayList<fur>(); 
    this.b.add(paramfur);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fuq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */