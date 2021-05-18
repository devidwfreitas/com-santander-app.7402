import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class hlf implements Serializable {
  @eks(a = "proposals")
  private List<hlg> a;
  
  @eks(a = "operations")
  private List<hlg> b;
  
  public List<hlg> a() {
    ArrayList<hlg> arrayList = new ArrayList();
    if (this.a != null)
      arrayList.addAll(this.a); 
    if (this.b != null)
      arrayList.addAll(this.b); 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hlf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */