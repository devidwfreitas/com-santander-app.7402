import java.io.Serializable;
import java.util.ArrayList;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class gay extends gnb implements Serializable {
  @ElementList(name = "paises", required = false)
  private ArrayList<gbd> paisModelArrayList;
  
  public ArrayList<gbd> a() {
    return this.paisModelArrayList;
  }
  
  public void a(ArrayList<gbd> paramArrayList) {
    this.paisModelArrayList = paramArrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */