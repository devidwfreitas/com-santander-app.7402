import java.io.Serializable;
import org.simpleframework.xml.Element;

public class frd extends fvu implements Serializable {
  @Element(required = false)
  private String codErro;
  
  @Element(required = false)
  private String confirmacao;
  
  @Element(required = false)
  private String dataHash;
  
  @Element(required = false)
  private String requestId;
  
  @Element(required = false)
  private String tokenTransacao;
  
  public void ap(String paramString) {
    this.codErro = paramString;
  }
  
  public String aq() {
    return this.codErro;
  }
  
  public void aq(String paramString) {
    this.confirmacao = paramString;
  }
  
  public String ar() {
    return this.confirmacao;
  }
  
  public void ar(String paramString) {
    this.dataHash = paramString;
  }
  
  public String as() {
    return this.dataHash;
  }
  
  public void as(String paramString) {
    this.requestId = paramString;
  }
  
  public String at() {
    return this.requestId;
  }
  
  public void at(String paramString) {
    this.tokenTransacao = paramString;
  }
  
  public String au() {
    return this.tokenTransacao;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\frd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */