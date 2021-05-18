import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class hzf extends goe implements Serializable {
  @Element(required = false)
  private String codAgrupamento;
  
  @Element(required = false)
  private String codServico;
  
  public String a() {
    return this.codServico;
  }
  
  public void a(String paramString) {
    this.codServico = paramString;
  }
  
  public String b() {
    return this.codAgrupamento;
  }
  
  public void b(String paramString) {
    this.codAgrupamento = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */