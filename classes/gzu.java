import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class gzu extends gnb implements Serializable {
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  @Element(required = false)
  private String resultado;
  
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
  
  public String c() {
    return this.resultado;
  }
  
  public void c(String paramString) {
    this.resultado = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gzu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */