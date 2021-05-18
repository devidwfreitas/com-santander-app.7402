import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class kdd extends gnb implements Serializable {
  @Element(required = false)
  private String codigoErro;
  
  @Element(required = false)
  private String faultString;
  
  @ElementList(inline = false, required = false)
  private List<kdj> planos;
  
  public List<kdj> a() {
    return this.planos;
  }
  
  public void a(String paramString) {
    this.codigoErro = paramString;
  }
  
  public void a(List<kdj> paramList) {
    this.planos = paramList;
  }
  
  public String b() {
    return this.codigoErro;
  }
  
  public void b(String paramString) {
    this.faultString = paramString;
  }
  
  public String c() {
    return this.faultString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kdd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */