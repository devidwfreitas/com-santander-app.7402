import java.io.Serializable;
import org.simpleframework.xml.Element;

public class ibs implements Serializable, Comparable {
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String flExibir;
  
  @Element(required = false)
  private int ordem;
  
  public String a() {
    return this.flExibir;
  }
  
  public int b() {
    return this.ordem;
  }
  
  public String c() {
    return this.descricao;
  }
  
  public int compareTo(Object paramObject) {
    return (this.ordem < ((ibs)paramObject).b()) ? -1 : ((this.ordem > ((ibs)paramObject).b()) ? 1 : 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ibs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */