import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class gxf extends goe implements Serializable {
  @Element(required = false)
  private String abordagem;
  
  @Element(required = false)
  private String visualizacao;
  
  public gxf() {}
  
  public gxf(String paramString1, String paramString2) {
    this.abordagem = paramString1;
    this.visualizacao = paramString2;
  }
  
  public String a() {
    return this.abordagem;
  }
  
  public void a(String paramString) {
    this.abordagem = paramString;
  }
  
  public String b() {
    return this.visualizacao;
  }
  
  public void b(String paramString) {
    this.visualizacao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gxf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */