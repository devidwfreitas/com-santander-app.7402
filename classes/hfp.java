import java.io.Serializable;
import org.simpleframework.xml.Element;

public class hfp implements hga, Serializable {
  @Element(required = false)
  private String numero;
  
  @Element(required = false)
  private String ordemApresentacao;
  
  @Element(required = false)
  private String valor;
  
  public String a() {
    return this.numero;
  }
  
  public String b() {
    return this.valor;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hfp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */