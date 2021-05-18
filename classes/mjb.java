import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class mjb extends gnb implements Serializable {
  @Element(required = false)
  private String codigoRetorno;
  
  @ElementList(inline = true, required = false)
  private List<mjc> listaProduto;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  public String a() {
    return this.mensagemRetorno;
  }
  
  public void a(String paramString) {
    this.mensagemRetorno = paramString;
  }
  
  public void a(List<mjc> paramList) {
    this.listaProduto = paramList;
  }
  
  public String b() {
    return this.codigoRetorno;
  }
  
  public void b(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public List<mjc> c() {
    return this.listaProduto;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mjb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */