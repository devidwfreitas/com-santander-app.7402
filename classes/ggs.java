import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class ggs extends gnb implements Serializable {
  @Element(required = false)
  private String codigoErro;
  
  @Element(required = false)
  private String dataTransacao;
  
  @Element(required = false)
  private String horaTransacao;
  
  public String a() {
    return this.dataTransacao;
  }
  
  public void a(String paramString) {
    this.dataTransacao = paramString;
  }
  
  public String b() {
    return this.horaTransacao;
  }
  
  public void b(String paramString) {
    this.horaTransacao = paramString;
  }
  
  public String c() {
    return this.codigoErro;
  }
  
  public void c(String paramString) {
    this.codigoErro = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ggs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */