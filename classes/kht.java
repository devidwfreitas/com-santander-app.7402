import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "operadoraRecargaResultListResponse")
public class kht extends gnb implements Serializable {
  @ElementList(inline = true, required = false)
  private List<khw> operadoraRecarga;
  
  public List<khw> a() {
    return this.operadoraRecarga;
  }
  
  public void a(List<khw> paramList) {
    this.operadoraRecarga = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kht.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */