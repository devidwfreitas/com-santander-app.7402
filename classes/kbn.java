import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class kbn implements Serializable {
  @Element(required = false)
  private String apelido;
  
  @Element(required = false)
  private String autenticacao;
  
  @Element(required = false)
  private String dataHoraTransacao;
  
  @Element(required = false)
  private String tipoDispositivo;
  
  public String a() {
    return this.apelido;
  }
  
  public void a(String paramString) {
    this.apelido = paramString;
  }
  
  public String b() {
    return this.autenticacao;
  }
  
  public void b(String paramString) {
    this.autenticacao = paramString;
  }
  
  public String c() {
    return this.dataHoraTransacao;
  }
  
  public void c(String paramString) {
    this.dataHoraTransacao = paramString;
  }
  
  public String d() {
    return this.tipoDispositivo;
  }
  
  public void d(String paramString) {
    this.tipoDispositivo = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kbn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */