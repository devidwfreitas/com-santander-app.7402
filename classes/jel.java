import java.io.Serializable;
import org.simpleframework.xml.Element;

public class jel implements Serializable, Cloneable {
  @Element(required = false)
  private String confirmacao;
  
  @Element(required = false)
  private String termoAdesaoFundo;
  
  public jel a() {
    return (jel)super.clone();
  }
  
  public void a(String paramString) {
    this.termoAdesaoFundo = paramString;
  }
  
  public String b() {
    return this.termoAdesaoFundo;
  }
  
  public void b(String paramString) {
    this.confirmacao = paramString;
  }
  
  public String c() {
    return this.confirmacao;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */