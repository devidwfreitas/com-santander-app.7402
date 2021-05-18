import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "servico")
public class hzp implements gkz, Serializable {
  @Element(required = false)
  private String codigoServico;
  
  @Element(required = false)
  private String nomeExibicao;
  
  @Element(required = false)
  private String ordem;
  
  public String Y() {
    return toString();
  }
  
  public String a() {
    return this.codigoServico;
  }
  
  public void a(String paramString) {
    this.codigoServico = paramString;
  }
  
  public String b() {
    return this.nomeExibicao;
  }
  
  public void b(String paramString) {
    this.nomeExibicao = paramString;
  }
  
  public String c() {
    return this.ordem;
  }
  
  public void c(String paramString) {
    this.ordem = paramString;
  }
  
  public String toString() {
    return this.nomeExibicao;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */