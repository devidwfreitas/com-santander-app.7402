import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class klz extends goe implements Serializable {
  @Element(required = false)
  private String contaCorrente;
  
  @Element(required = false)
  private String dataFinal;
  
  @Element(required = false)
  private String dataInicial;
  
  @Element(required = false)
  private String tipoComprovante;
  
  public String a() {
    return this.contaCorrente;
  }
  
  public void a(String paramString) {
    this.contaCorrente = paramString;
  }
  
  public String b() {
    return this.dataInicial;
  }
  
  public void b(String paramString) {
    this.dataInicial = paramString;
  }
  
  public String c() {
    return this.dataFinal;
  }
  
  public void c(String paramString) {
    this.dataFinal = paramString;
  }
  
  public String d() {
    return this.tipoComprovante;
  }
  
  public void d(String paramString) {
    this.tipoComprovante = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\klz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */