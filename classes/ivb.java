import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class ivb extends goe implements Serializable {
  @Element(required = false)
  private String gerarImagem;
  
  public String a() {
    return this.gerarImagem;
  }
  
  public void a(String paramString) {
    this.gerarImagem = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ivb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */