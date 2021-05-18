import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class kbw extends goe implements Serializable {
  @Element(required = false)
  private String codNSU;
  
  @Element(required = false)
  private String indicadorExtratoATM;
  
  @Element(required = false)
  private String numeroContrato;
  
  public String a() {
    return this.numeroContrato;
  }
  
  public void a(String paramString) {
    this.numeroContrato = paramString;
  }
  
  public String b() {
    return this.codNSU;
  }
  
  public void b(String paramString) {
    this.codNSU = paramString;
  }
  
  public String c() {
    return this.indicadorExtratoATM;
  }
  
  public void c(String paramString) {
    this.indicadorExtratoATM = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kbw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */