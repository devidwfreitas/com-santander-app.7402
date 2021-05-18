import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class hkn extends goe implements Serializable {
  @Element
  private String codProduto;
  
  @Element
  private String codSubProduto;
  
  @Element
  private String impostoTotalARestituir;
  
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
    return this.impostoTotalARestituir;
  }
  
  public void c(String paramString) {
    this.impostoTotalARestituir = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hkn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */