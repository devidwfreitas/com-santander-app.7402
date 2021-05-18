import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "familias")
public class ipf {
  @Element(required = false)
  private String codigoCor;
  
  @Element(required = false)
  private String nomeFamilia;
  
  @Element(required = false)
  private String tipoFamilia;
  
  public String a() {
    return this.codigoCor;
  }
  
  public void a(String paramString) {
    this.codigoCor = paramString;
  }
  
  public String b() {
    return this.nomeFamilia;
  }
  
  public void b(String paramString) {
    this.nomeFamilia = paramString;
  }
  
  public String c() {
    return this.tipoFamilia;
  }
  
  public void c(String paramString) {
    this.tipoFamilia = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ipf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */