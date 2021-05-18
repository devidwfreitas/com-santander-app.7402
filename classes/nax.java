import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class nax extends gnb implements Serializable {
  @Element(required = false)
  private String connUuid;
  
  @Element(required = false)
  private String tokenSessao;
  
  public String a() {
    return this.connUuid;
  }
  
  public void a(String paramString) {
    this.connUuid = paramString;
  }
  
  public String b() {
    return this.tokenSessao;
  }
  
  public void b(String paramString) {
    this.tokenSessao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\nax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */