import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "listaTipoComprovante")
public class klw implements Serializable {
  @Element(required = false)
  private String codigoComprovante;
  
  @Element(required = false)
  private String descricaoComprovante;
  
  public String a() {
    return this.codigoComprovante;
  }
  
  public void a(String paramString) {
    this.codigoComprovante = paramString;
  }
  
  public String b() {
    return this.descricaoComprovante;
  }
  
  public void b(String paramString) {
    this.descricaoComprovante = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\klw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */