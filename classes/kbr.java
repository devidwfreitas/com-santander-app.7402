import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class kbr extends gnb implements Serializable {
  @ElementList(inline = true, name = "listaDispositivos", required = false)
  private List<kbq> listaDeDispositivos;
  
  public List<kbq> a() {
    return this.listaDeDispositivos;
  }
  
  public void a(ArrayList<kbq> paramArrayList) {
    this.listaDeDispositivos = paramArrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kbr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */