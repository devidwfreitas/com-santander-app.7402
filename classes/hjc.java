import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class hjc extends goe implements Serializable {
  @Element
  private String codProduto;
  
  @Element
  private String codSubProduto;
  
  @Element
  private String dataPagamentoDDMMYYYY;
  
  @Element
  private String numParcelas;
  
  public String a() {
    return this.numParcelas;
  }
  
  public void a(String paramString) {
    this.numParcelas = paramString;
  }
  
  public String b() {
    return this.codProduto;
  }
  
  public void b(String paramString) {
    this.codProduto = paramString;
  }
  
  public String c() {
    return this.codSubProduto;
  }
  
  public void c(String paramString) {
    this.codSubProduto = paramString;
  }
  
  public String d() {
    return this.dataPagamentoDDMMYYYY;
  }
  
  public void d(String paramString) {
    this.dataPagamentoDDMMYYYY = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hjc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */