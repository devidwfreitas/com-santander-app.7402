import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class mll extends goe {
  @Element(required = false)
  private String agenciaOrigem;
  
  @Element(required = false)
  private String contaOrigem;
  
  public String a() {
    return this.agenciaOrigem;
  }
  
  public void a(String paramString) {
    this.agenciaOrigem = paramString;
  }
  
  public String b() {
    return this.contaOrigem;
  }
  
  public void b(String paramString) {
    this.contaOrigem = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mll.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */