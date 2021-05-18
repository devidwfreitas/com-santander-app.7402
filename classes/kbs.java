import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class kbs extends gnb implements Serializable {
  @Element(required = false)
  private String codNSU;
  
  @Element(required = false)
  private String codigoMensagem;
  
  @Element(required = false)
  private String descricaoMensagem;
  
  public String a() {
    return this.codigoMensagem;
  }
  
  public void a(String paramString) {
    this.codigoMensagem = paramString;
  }
  
  public String b() {
    return this.descricaoMensagem;
  }
  
  public void b(String paramString) {
    this.descricaoMensagem = paramString;
  }
  
  public String c() {
    return this.codNSU;
  }
  
  public void c(String paramString) {
    this.codNSU = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kbs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */