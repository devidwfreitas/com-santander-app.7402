import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "listaRemuneracao")
public class mjd implements Serializable {
  @Element(required = false)
  private String observacao;
  
  @Element(required = false)
  private String prazoFinal;
  
  @Element(required = false)
  private String prazoInicial;
  
  @Element(required = false)
  private String taxaCDI;
  
  public String a() {
    return this.observacao;
  }
  
  public void a(String paramString) {
    this.observacao = paramString;
  }
  
  public String b() {
    return this.prazoFinal;
  }
  
  public void b(String paramString) {
    this.prazoFinal = paramString;
  }
  
  public String c() {
    return this.prazoInicial;
  }
  
  public void c(String paramString) {
    this.prazoInicial = paramString;
  }
  
  public String d() {
    return this.taxaCDI;
  }
  
  public void d(String paramString) {
    this.taxaCDI = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mjd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */