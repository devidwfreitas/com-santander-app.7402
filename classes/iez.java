import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "habilitarTIDNMResponse")
public class iez extends gnb implements Serializable {
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  public String a() {
    return this.codigoRetorno;
  }
  
  public void a(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public String b() {
    return this.mensagemRetorno;
  }
  
  public void b(String paramString) {
    this.mensagemRetorno = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\iez.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */