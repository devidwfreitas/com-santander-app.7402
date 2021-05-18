import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class khu implements Serializable {
  @Element(required = false)
  private String agencia = "";
  
  @Element(required = false)
  private String connUuid = "";
  
  @Element(required = false)
  private String conta = "";
  
  @Element(required = false)
  private String tipoConta = "";
  
  @Element(required = false)
  private String tokenSessao = "";
  
  @Element(required = false)
  private String tokenTransacao = "";
  
  public void a(String paramString) {
    this.agencia = paramString;
  }
  
  public void b(String paramString) {
    this.connUuid = paramString;
  }
  
  public void c(String paramString) {
    this.conta = paramString;
  }
  
  public void d(String paramString) {
    this.tipoConta = paramString;
  }
  
  public void e(String paramString) {
    this.tokenSessao = paramString;
  }
  
  public void f(String paramString) {
    this.tokenTransacao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\khu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */