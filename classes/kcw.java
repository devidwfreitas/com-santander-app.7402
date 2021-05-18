import java.io.Serializable;
import org.simpleframework.xml.Element;

public class kcw extends gnb implements Serializable {
  @Element(required = false)
  private String saldoTotal;
  
  public String a() {
    return this.saldoTotal;
  }
  
  public void a(String paramString) {
    this.saldoTotal = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kcw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */