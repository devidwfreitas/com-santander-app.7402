import java.io.Serializable;
import java.util.ArrayList;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class ggt extends gnb implements Serializable {
  @ElementList(inline = true, required = false)
  private ArrayList<ggu> listaCartaoBloqueavel;
  
  public ArrayList<ggu> a() {
    return this.listaCartaoBloqueavel;
  }
  
  public void a(ArrayList<ggu> paramArrayList) {
    this.listaCartaoBloqueavel = paramArrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ggt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */