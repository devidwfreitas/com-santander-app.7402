import java.io.Serializable;
import org.simpleframework.xml.Element;

public class goe implements Serializable {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String connUuid;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String tokenSessao;
  
  @Element(required = false)
  private String tokenTransacao;
  
  public String getAgencia() {
    return this.agencia;
  }
  
  public String getConnUuid() {
    return this.connUuid;
  }
  
  public String getConta() {
    return this.conta;
  }
  
  public String getTokenSessao() {
    return this.tokenSessao;
  }
  
  public String getTokenTransacao() {
    return this.tokenTransacao;
  }
  
  public void setAgencia(String paramString) {
    this.agencia = paramString;
  }
  
  public void setConnUuid(String paramString) {
    this.connUuid = paramString;
  }
  
  public void setConta(String paramString) {
    this.conta = paramString;
  }
  
  public void setTokenSessao(String paramString) {
    this.tokenSessao = paramString;
  }
  
  public void setTokenTransacao(String paramString) {
    this.tokenTransacao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\goe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */