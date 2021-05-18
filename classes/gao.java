import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class gao extends goe {
  @Element(required = false)
  private String codigoMoeda;
  
  @Element(required = false)
  private String codigoMoedaLocal;
  
  @Element(required = false)
  private String codigoNatureza;
  
  @Element(required = false)
  private String codigoPais;
  
  @Element(required = false)
  private String valor;
  
  public gao() {}
  
  public gao(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    this.codigoMoedaLocal = paramString1;
    this.codigoPais = paramString2;
    this.codigoMoeda = paramString3;
    this.codigoNatureza = paramString4;
    this.valor = paramString5;
  }
  
  public String a() {
    return this.codigoPais;
  }
  
  public void a(String paramString) {
    this.codigoPais = paramString;
  }
  
  public String b() {
    return this.codigoMoeda;
  }
  
  public void b(String paramString) {
    this.codigoMoeda = paramString;
  }
  
  public String c() {
    return this.codigoNatureza;
  }
  
  public void c(String paramString) {
    this.codigoNatureza = paramString;
  }
  
  public String d() {
    return this.valor;
  }
  
  public void d(String paramString) {
    this.valor = paramString;
  }
  
  public String e() {
    return this.codigoMoedaLocal;
  }
  
  public void e(String paramString) {
    this.codigoMoedaLocal = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */