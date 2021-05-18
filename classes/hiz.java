import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hiz extends gnb implements Serializable {
  @Element(required = false)
  private String codProduto;
  
  @Element(required = false)
  private String codSubProduto;
  
  @Element(required = false)
  private String dataLimiteContrato;
  
  @Element(required = false)
  private String elegivel;
  
  public String a() {
    return this.codProduto;
  }
  
  public void a(String paramString) {
    this.codProduto = paramString;
  }
  
  public String b() {
    return this.codSubProduto;
  }
  
  public void b(String paramString) {
    this.codSubProduto = paramString;
  }
  
  public String c() {
    return this.dataLimiteContrato;
  }
  
  public void c(String paramString) {
    this.dataLimiteContrato = paramString;
  }
  
  public String d() {
    return this.elegivel;
  }
  
  public void d(String paramString) {
    this.elegivel = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hiz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */