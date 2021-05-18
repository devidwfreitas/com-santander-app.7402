import java.io.Serializable;
import org.simpleframework.xml.Element;

@Element(name = "listaAgendamentos")
public class fre implements Serializable {
  @Element(required = false)
  private String autenticacao;
  
  @Element(required = false)
  private String dataHoraTransacao;
  
  public String a() {
    return this.autenticacao;
  }
  
  public void a(String paramString) {
    this.autenticacao = paramString;
  }
  
  public String b() {
    return this.dataHoraTransacao;
  }
  
  public void b(String paramString) {
    this.dataHoraTransacao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\fre.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */