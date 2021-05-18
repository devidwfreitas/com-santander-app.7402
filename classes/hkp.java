import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class hkp extends goe {
  @Element(required = false)
  private String codProduto;
  
  @Element(required = false)
  private String codSubProduto;
  
  @Element(required = false)
  private String impostoTotalARestituir;
  
  @Element(required = false)
  private String valorAContratar;
  
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
  
  public String d() {
    return this.valorAContratar;
  }
  
  public void d(String paramString) {
    this.valorAContratar = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hkp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */