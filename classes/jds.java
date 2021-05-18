import java.io.Serializable;
import org.simpleframework.xml.Element;

public class jds extends gnb implements Serializable, Cloneable {
  @Element(required = false)
  private String termoAdesaoFundo;
  
  @Element(required = false)
  private jel termoFundos;
  
  public jds a() {
    return (jds)super.clone();
  }
  
  public void a(String paramString) {
    this.termoAdesaoFundo = paramString;
  }
  
  public void a(jel paramjel) {
    this.termoFundos = paramjel;
  }
  
  public jel b() {
    return this.termoFundos;
  }
  
  public String c() {
    return this.termoAdesaoFundo;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */