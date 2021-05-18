import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class ghq extends goe implements Serializable {
  @Element
  private String codigoBloqueio;
  
  @Element
  private String numCartao;
  
  public String a() {
    return this.codigoBloqueio;
  }
  
  public void a(String paramString) {
    this.codigoBloqueio = paramString;
  }
  
  public String b() {
    return this.numCartao;
  }
  
  public void b(String paramString) {
    this.numCartao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ghq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */