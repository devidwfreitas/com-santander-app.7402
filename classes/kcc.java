import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class kcc extends goe {
  @Element(required = false)
  private String imei;
  
  @Element(required = false)
  private String numeroDestino;
  
  @Element(required = false)
  private String numeroOrigem;
  
  @Element(required = false)
  private String requestId;
  
  @Element(required = false)
  private String texto;
  
  public String a() {
    return this.imei;
  }
  
  public void a(String paramString) {
    this.imei = paramString;
  }
  
  public String b() {
    return this.numeroDestino;
  }
  
  public void b(String paramString) {
    this.numeroDestino = paramString;
  }
  
  public String c() {
    return this.numeroOrigem;
  }
  
  public void c(String paramString) {
    this.numeroOrigem = paramString;
  }
  
  public String d() {
    return this.texto;
  }
  
  public void d(String paramString) {
    this.texto = paramString;
  }
  
  public String e() {
    return this.requestId;
  }
  
  public void e(String paramString) {
    this.requestId = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kcc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */