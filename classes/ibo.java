import java.io.Serializable;
import java.util.LinkedList;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;

public class ibo implements Serializable, Comparable {
  @Element(required = false)
  private String codAgrupamento;
  
  @Element(required = false)
  private String flExibir;
  
  @Element(required = false)
  private String imagem;
  
  @Element(required = false)
  private String nomeExibicaoAgrupamento;
  
  @Element(required = false)
  private int ordem;
  
  @ElementList(required = false)
  private LinkedList<ibp> questoes;
  
  @Element(required = false)
  private String tagAppCelerator;
  
  public String a() {
    return this.codAgrupamento;
  }
  
  public void a(String paramString) {
    this.nomeExibicaoAgrupamento = paramString;
  }
  
  public String b() {
    return this.flExibir;
  }
  
  public String c() {
    return this.imagem;
  }
  
  public int compareTo(Object paramObject) {
    return (this.ordem < ((ibo)paramObject).e()) ? -1 : ((this.ordem > ((ibo)paramObject).e()) ? 1 : 0);
  }
  
  public String d() {
    return this.nomeExibicaoAgrupamento;
  }
  
  public int e() {
    return this.ordem;
  }
  
  public LinkedList<ibp> f() {
    return this.questoes;
  }
  
  public String g() {
    return this.tagAppCelerator;
  }
  
  public String toString() {
    return this.nomeExibicaoAgrupamento;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ibo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */