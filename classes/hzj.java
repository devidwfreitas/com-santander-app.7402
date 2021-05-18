import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hzj extends gnb implements Serializable {
  @Element(required = false)
  private String nome;
  
  public String a() {
    return this.nome;
  }
  
  public void a(String paramString) {
    this.nome = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */