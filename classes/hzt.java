import java.io.Serializable;
import org.simpleframework.xml.Element;

public class hzt implements Serializable {
  @Element(required = false)
  private String faultstring;
  
  @Element(required = false)
  private String segmentoExibicao;
  
  @Element(required = false)
  private String sistemaAtivo;
  
  @Element(required = false)
  private String tamanhoArquivo;
  
  public String a() {
    return this.segmentoExibicao;
  }
  
  public String b() {
    return this.sistemaAtivo;
  }
  
  public String c() {
    return this.tamanhoArquivo;
  }
  
  public String d() {
    return this.faultstring;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */