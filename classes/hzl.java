import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "request")
public class hzl extends goe implements Serializable {
  @Element(required = false)
  private hzc manifestacao;
  
  @Element(required = false)
  private hzh observacao;
  
  @Element(required = false)
  private hzn rootAnexo;
  
  public hzn a() {
    return this.rootAnexo;
  }
  
  public void a(hzc paramhzc) {
    this.manifestacao = paramhzc;
  }
  
  public void a(hzh paramhzh) {
    this.observacao = paramhzh;
  }
  
  public void a(hzn paramhzn) {
    this.rootAnexo = paramhzn;
  }
  
  public hzc b() {
    return this.manifestacao;
  }
  
  public hzh c() {
    return this.observacao;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */