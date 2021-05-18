import java.io.Serializable;
import org.simpleframework.xml.Element;

public class hfq implements Serializable {
  @Element(required = false)
  private String cep;
  
  @Element(required = false)
  private String cidade;
  
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String uf;
  
  public String a() {
    return this.cep;
  }
  
  public String b() {
    return this.cidade;
  }
  
  public String c() {
    return this.descricao;
  }
  
  public String d() {
    return this.uf;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hfq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */