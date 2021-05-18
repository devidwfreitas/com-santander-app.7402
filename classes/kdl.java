import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class kdl extends goe {
  @Element(required = false)
  private String numeroProposta;
  
  @Element(required = false)
  private String valorAporte;
  
  public String a() {
    return this.numeroProposta;
  }
  
  public void a(String paramString) {
    this.numeroProposta = paramString;
  }
  
  public String b() {
    return this.valorAporte;
  }
  
  public void b(String paramString) {
    this.valorAporte = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kdl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */