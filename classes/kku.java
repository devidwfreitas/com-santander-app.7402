import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class kku extends goe implements Serializable {
  @Element(name = "tokenTransacaoHub", required = false)
  private String tokenTransacaoH;
  
  public String a() {
    return this.tokenTransacaoH;
  }
  
  public void a(String paramString) {
    this.tokenTransacaoH = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kku.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */