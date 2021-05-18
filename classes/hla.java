import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hla extends gnb implements hlh, Serializable {
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String dataSolicitacao;
  
  @Element(required = false)
  private String dataTransacao;
  
  @Element(required = false)
  private String horaSolicitacao;
  
  @Element(required = false)
  private String horaTransacao;
  
  @Element(required = false)
  private String referOper;
  
  public boolean a() {
    return (this.codigoRetorno != null && this.codigoRetorno.equalsIgnoreCase("0"));
  }
  
  public String b() {
    return (this.referOper != null) ? this.referOper : "";
  }
  
  public String c() {
    return "";
  }
  
  public String d() {
    return "";
  }
  
  public String e() {
    return (getMensagemErro() != null) ? getMensagemErro() : "";
  }
  
  public String f() {
    return this.referOper;
  }
  
  public String getDataHoraTransacao() {
    return String.format("%s - %s", new Object[] { this.dataTransacao, this.horaTransacao });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hla.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */