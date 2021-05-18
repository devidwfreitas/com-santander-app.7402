import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class gzv extends goe implements Serializable {
  @Element
  private String deviceIdAtivo;
  
  @Element
  private String idDispositivoAtivo;
  
  @Element
  private String idUsuarioAtivo;
  
  @Element
  private String infoMobile;
  
  @Element
  private String senha;
  
  public String a() {
    return this.infoMobile;
  }
  
  public void a(String paramString) {
    this.infoMobile = paramString;
  }
  
  public String b() {
    return this.deviceIdAtivo;
  }
  
  public void b(String paramString) {
    this.deviceIdAtivo = paramString;
  }
  
  public String c() {
    return this.idDispositivoAtivo;
  }
  
  public void c(String paramString) {
    this.idDispositivoAtivo = paramString;
  }
  
  public String d() {
    return this.idUsuarioAtivo;
  }
  
  public void d(String paramString) {
    this.idUsuarioAtivo = paramString;
  }
  
  public String e() {
    return this.senha;
  }
  
  public void e(String paramString) {
    this.senha = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gzv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */