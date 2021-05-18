import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "request")
public class jdt extends goe implements Serializable {
  @Element(required = false)
  private String codigoFundo;
  
  @Element(required = false)
  private String tipoTermo;
  
  public String a() {
    return this.tipoTermo;
  }
  
  public void a(String paramString) {
    this.tipoTermo = paramString;
  }
  
  public String b() {
    return this.codigoFundo;
  }
  
  public void b(String paramString) {
    this.codigoFundo = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jdt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */