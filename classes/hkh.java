import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hkh extends gnb {
  @Element(required = false)
  private String confirmarcao;
  
  @Element(required = false)
  private String valorDisponivel;
  
  @Element(required = false)
  private String valorMinimo;
  
  public String a() {
    return this.valorDisponivel;
  }
  
  public void a(String paramString) {
    this.valorDisponivel = paramString;
  }
  
  public String b() {
    return this.valorMinimo;
  }
  
  public void b(String paramString) {
    this.valorMinimo = paramString;
  }
  
  public String c() {
    return this.confirmarcao;
  }
  
  public void c(String paramString) {
    this.confirmarcao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hkh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */