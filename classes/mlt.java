import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class mlt extends goe {
  @Element(required = false)
  private String agenciaDestino;
  
  @Element(required = false)
  private String agenciaOrigem;
  
  @Element(required = false)
  private String codBancoDestino;
  
  @Element(required = false)
  private String tipoConta;
  
  public String a() {
    return this.agenciaDestino;
  }
  
  public void a(String paramString) {
    this.agenciaDestino = paramString;
  }
  
  public String b() {
    return this.agenciaOrigem;
  }
  
  public void b(String paramString) {
    this.agenciaOrigem = paramString;
  }
  
  public String c() {
    return this.codBancoDestino;
  }
  
  public void c(String paramString) {
    this.codBancoDestino = paramString;
  }
  
  public String d() {
    return this.tipoConta;
  }
  
  public void d(String paramString) {
    this.tipoConta = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mlt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */