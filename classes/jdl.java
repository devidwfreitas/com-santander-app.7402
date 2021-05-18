import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;

public class jdl implements Serializable, Cloneable {
  @Element(required = false)
  private boolean exibirFamilia;
  
  @ElementList(name = "fundos", required = false)
  private List<jdx> fundos;
  
  @Element(required = false)
  private String legendaFamilia;
  
  @Element(required = false)
  private String nomeFamilia;
  
  @Element(required = false)
  private String ordem;
  
  @Element(required = false)
  private String tipoFamilia;
  
  public jdl a() {
    return (jdl)super.clone();
  }
  
  public void a(String paramString) {
    this.nomeFamilia = paramString;
  }
  
  public void a(List<jdx> paramList) {
    this.fundos = paramList;
  }
  
  public void a(boolean paramBoolean) {
    this.exibirFamilia = paramBoolean;
  }
  
  public String b() {
    return this.nomeFamilia;
  }
  
  public void b(String paramString) {
    this.tipoFamilia = paramString;
  }
  
  public String c() {
    return this.tipoFamilia;
  }
  
  public void c(String paramString) {
    this.legendaFamilia = paramString;
  }
  
  public List<jdx> d() {
    return this.fundos;
  }
  
  public void d(String paramString) {
    this.ordem = paramString;
  }
  
  public boolean e() {
    return this.exibirFamilia;
  }
  
  public String f() {
    return this.legendaFamilia;
  }
  
  public String g() {
    return this.ordem;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jdl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */