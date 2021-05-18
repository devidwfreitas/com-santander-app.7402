import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class klt extends gnb implements Serializable {
  @ElementList(inline = true, required = false)
  private List<klw> listaFiltro;
  
  public List<klw> a() {
    return this.listaFiltro;
  }
  
  public void a(List<klw> paramList) {
    this.listaFiltro = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\klt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */