import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "fundos")
public class ipg {
  @Element(required = false)
  private String codigoCor;
  
  @Element(required = false)
  private String codigoFundo;
  
  @Element(required = false)
  private String nomeReduzidoIb;
  
  @Element(required = false)
  private String saldoBruto;
  
  @Element(required = false)
  private String valorDisponivelRegaste;
  
  public String a() {
    return this.valorDisponivelRegaste;
  }
  
  public void a(String paramString) {
    this.valorDisponivelRegaste = paramString;
  }
  
  public String b() {
    return this.codigoCor;
  }
  
  public void b(String paramString) {
    this.codigoCor = paramString;
  }
  
  public String c() {
    return this.codigoFundo;
  }
  
  public void c(String paramString) {
    this.codigoFundo = paramString;
  }
  
  public String d() {
    return this.nomeReduzidoIb;
  }
  
  public void d(String paramString) {
    this.nomeReduzidoIb = paramString;
  }
  
  public String e() {
    return this.saldoBruto;
  }
  
  public void e(String paramString) {
    this.saldoBruto = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ipg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */