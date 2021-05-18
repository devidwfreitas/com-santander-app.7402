import java.io.Serializable;
import org.simpleframework.xml.Element;

public class gnb implements Serializable {
  private static final long serialVersionUID = 1L;
  
  @Element(required = false)
  private String autenticacao;
  
  @Element(required = false)
  private String codErro;
  
  @Element(required = false)
  private String confirmacao;
  
  @Element(required = false)
  private String dataHash;
  
  @Element(required = false)
  private String dataHoraTransacao;
  
  @Element(required = false)
  private String faultcode;
  
  @Element(required = false)
  private String faultstring;
  
  @Element(required = false)
  private String mensagemErro;
  
  @Element(required = false)
  private String msgErro;
  
  @Element(required = false)
  private String requestId;
  
  @Element(required = false)
  private String tokenTransacao;
  
  public String getAutenticacao() {
    return this.autenticacao;
  }
  
  public String getCodErro() {
    return this.codErro;
  }
  
  public String getConfirmacao() {
    return this.confirmacao;
  }
  
  public String getDataHash() {
    return this.dataHash;
  }
  
  public String getDataHoraTransacao() {
    return this.dataHoraTransacao;
  }
  
  public String getFaultcode() {
    return this.faultcode;
  }
  
  public String getFaultstring() {
    return this.faultstring;
  }
  
  public String getMensagemErro() {
    return this.mensagemErro;
  }
  
  public String getMsgErro() {
    return this.msgErro;
  }
  
  public String getRequestId() {
    return this.requestId;
  }
  
  public String getTokenTransacao() {
    return this.tokenTransacao;
  }
  
  public void setAutenticacao(String paramString) {
    this.autenticacao = paramString;
  }
  
  public void setCodErro(String paramString) {
    this.codErro = paramString;
  }
  
  public void setConfirmacao(String paramString) {
    this.confirmacao = paramString;
  }
  
  public void setDataHash(String paramString) {
    this.dataHash = paramString;
  }
  
  public void setDataHoraTransacao(String paramString) {
    this.dataHoraTransacao = paramString;
  }
  
  public void setFaultcode(String paramString) {
    this.faultcode = paramString;
  }
  
  public void setFaultstring(String paramString) {
    this.faultstring = paramString;
  }
  
  public void setMensagemErro(String paramString) {
    this.mensagemErro = paramString;
  }
  
  public void setMsgErro(String paramString) {
    this.msgErro = paramString;
  }
  
  public void setRequestId(String paramString) {
    this.requestId = paramString;
  }
  
  public void setTokenTransacao(String paramString) {
    this.tokenTransacao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gnb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */