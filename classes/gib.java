import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "request")
public class gib extends goe {
  @Element(required = false)
  private String contrato;
  
  @Element(required = false)
  private String numeroCartao;
  
  public String a() {
    return this.contrato;
  }
  
  public void a(String paramString) {
    this.contrato = paramString;
  }
  
  public String b() {
    return this.numeroCartao;
  }
  
  public void b(String paramString) {
    this.numeroCartao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gib.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */