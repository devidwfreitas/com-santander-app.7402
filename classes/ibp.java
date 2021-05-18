import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;

public class ibp implements Serializable, Comparable {
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String flExibir;
  
  @Element(required = false)
  private int ordem;
  
  @ElementList(required = false)
  private List<ibs> respostas;
  
  @Element(required = false)
  private String tagAppCelerator;
  
  public String a() {
    return this.tagAppCelerator;
  }
  
  public String b() {
    return this.flExibir;
  }
  
  public int c() {
    return this.ordem;
  }
  
  public int compareTo(Object paramObject) {
    return (this.ordem < ((ibp)paramObject).c()) ? -1 : ((this.ordem > ((ibp)paramObject).c()) ? 1 : 0);
  }
  
  public String d() {
    return this.descricao.replace("\\n", System.getProperty("line.separator"));
  }
  
  public List<ibs> e() {
    return this.respostas;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ibp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */