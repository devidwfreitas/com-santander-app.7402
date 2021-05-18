import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;

public class kcy extends gnb implements Serializable {
  @Element(required = false)
  private String codigoErro;
  
  @ElementList(inline = true, required = false)
  private List<kdf> grupoContratoPrevidenciaModelList;
  
  @Element(required = false)
  private String saldoTotal;
  
  @Element(required = false)
  private String tokenSessao;
  
  public List<kdf> a() {
    return this.grupoContratoPrevidenciaModelList;
  }
  
  public void a(String paramString) {
    this.tokenSessao = paramString;
  }
  
  public void a(List<kdf> paramList) {
    this.grupoContratoPrevidenciaModelList = paramList;
  }
  
  public String b() {
    return this.tokenSessao;
  }
  
  public void b(String paramString) {
    this.saldoTotal = paramString;
  }
  
  public String c() {
    return this.saldoTotal;
  }
  
  public void c(String paramString) {
    this.codigoErro = paramString;
  }
  
  public String d() {
    return this.codigoErro;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kcy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */