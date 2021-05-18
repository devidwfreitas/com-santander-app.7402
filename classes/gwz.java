import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class gwz extends goe implements Serializable {
  @Element(required = false)
  private String abordagem;
  
  @Element(required = false)
  private String campanha;
  
  @Element(required = false)
  private String flag;
  
  @Element(required = false)
  private String visualizacao;
  
  public String a() {
    return this.campanha;
  }
  
  public void a(String paramString) {
    this.campanha = paramString;
  }
  
  public String b() {
    return this.flag;
  }
  
  public void b(String paramString) {
    this.flag = paramString;
  }
  
  public String c() {
    return this.visualizacao;
  }
  
  public void c(String paramString) {
    this.visualizacao = paramString;
  }
  
  public String d() {
    return this.abordagem;
  }
  
  public void d(String paramString) {
    this.abordagem = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gwz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */