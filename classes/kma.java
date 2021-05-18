import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class kma extends gnb implements Serializable {
  @Element(required = false)
  private String dataFinal;
  
  @Element(required = false)
  private String dataInicial;
  
  @ElementList(inline = true, required = false)
  private List<klx> listaDetalhe;
  
  public String a() {
    return this.dataInicial;
  }
  
  public void a(String paramString) {
    this.dataInicial = paramString;
  }
  
  public void a(List<klx> paramList) {
    this.listaDetalhe = paramList;
  }
  
  public String b() {
    return this.dataFinal;
  }
  
  public void b(String paramString) {
    this.dataFinal = paramString;
  }
  
  public List<klx> c() {
    return this.listaDetalhe;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kma.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */