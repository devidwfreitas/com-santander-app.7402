import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "AceiteRequest")
public class jek extends goe implements Serializable {
  @Element(required = false)
  private String codigoBanco;
  
  @Element(required = false)
  private String codigoEventoApi;
  
  @Element(required = false)
  private String codigoPlataforma;
  
  @Element(required = false)
  private String codigoProduto;
  
  @Element(required = false)
  private String codigoSubProduto;
  
  @Element(required = false)
  private String numeroConta;
  
  @Element(required = false)
  private String tipoDocTexto;
  
  public String a() {
    return this.codigoBanco;
  }
  
  public void a(String paramString) {
    this.codigoBanco = paramString;
  }
  
  public String b() {
    return this.codigoEventoApi;
  }
  
  public void b(String paramString) {
    this.codigoEventoApi = paramString;
  }
  
  public String c() {
    return this.codigoPlataforma;
  }
  
  public void c(String paramString) {
    this.codigoPlataforma = paramString;
  }
  
  public String d() {
    return this.codigoSubProduto;
  }
  
  public void d(String paramString) {
    this.codigoSubProduto = paramString;
  }
  
  public String e() {
    return this.numeroConta;
  }
  
  public void e(String paramString) {
    this.numeroConta = paramString;
  }
  
  public String f() {
    return this.tipoDocTexto;
  }
  
  public void f(String paramString) {
    this.tipoDocTexto = paramString;
  }
  
  public String g() {
    return this.codigoProduto;
  }
  
  public void g(String paramString) {
    this.codigoProduto = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */