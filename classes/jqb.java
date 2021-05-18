import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "MarcarContaPreferencialRequest")
public class jqb extends goe implements Serializable {
  @Element(required = false)
  private String agenciaPreferencial;
  
  @Element(required = false)
  private String contaPreferencial;
  
  public String a() {
    return this.agenciaPreferencial;
  }
  
  public void a(String paramString) {
    this.agenciaPreferencial = paramString;
  }
  
  public String b() {
    return this.contaPreferencial;
  }
  
  public void b(String paramString) {
    this.contaPreferencial = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jqb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */