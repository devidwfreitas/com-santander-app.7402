import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class hje extends goe {
  @Element(required = false)
  private String codProduto;
  
  @Element(required = false)
  private String codSubProduto;
  
  @Element(required = false)
  private String dataPagamentoDDMMYYYY;
  
  @Element(required = false)
  private String numParcelas;
  
  @Element(required = false)
  private String valorAContratar;
  
  @Element(required = false)
  private String valorDisponivel;
  
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
  
  public String e() {
    return this.valorAContratar;
  }
  
  public void e(String paramString) {
    this.valorAContratar = paramString;
  }
  
  public String f() {
    return this.valorDisponivel;
  }
  
  public void f(String paramString) {
    this.valorDisponivel = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hje.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */