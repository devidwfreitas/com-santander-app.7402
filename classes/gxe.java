import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class gxe extends gnb implements Serializable {
  @Element(required = false)
  private String visualizacao;
  
  public gxe() {}
  
  public gxe(String paramString) {
    this.visualizacao = paramString;
  }
  
  public String a() {
    return this.visualizacao;
  }
  
  public void a(String paramString) {
    this.visualizacao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gxe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */