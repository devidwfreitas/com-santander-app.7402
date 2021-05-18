import java.io.Serializable;
import org.simpleframework.xml.Element;

public class jcj implements Serializable {
  @Element(required = false)
  private String codRetorno;
  
  @Element(required = false)
  private String dadosRetorno;
  
  @Element(required = false)
  private String segmentoNome;
  
  public String a() {
    return this.codRetorno;
  }
  
  public void a(String paramString) {
    this.codRetorno = paramString;
  }
  
  public String b() {
    return this.dadosRetorno;
  }
  
  public void b(String paramString) {
    this.dadosRetorno = paramString;
  }
  
  public String c() {
    return this.segmentoNome;
  }
  
  public void c(String paramString) {
    this.segmentoNome = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jcj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */