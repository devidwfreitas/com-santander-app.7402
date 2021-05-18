import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class ilo extends goe {
  @Element(required = false)
  private String codigoDevice;
  
  @Element(required = false)
  private String codigoSimCard;
  
  @Element(required = false)
  private String documento;
  
  @Element(required = false)
  private String ipExterno;
  
  @Element(required = false)
  private String ipInterno;
  
  @Element(required = false)
  private String latitude;
  
  @Element(required = false)
  private String longitude;
  
  @Element(required = false)
  private String modeloDevice;
  
  @Element(required = false)
  private String nomeDevice;
  
  @Element(required = false)
  private String operadora;
  
  @Element(required = false)
  private String ticket;
  
  public String a() {
    return this.codigoDevice;
  }
  
  public void a(String paramString) {
    this.codigoDevice = paramString;
  }
  
  public String b() {
    return this.codigoSimCard;
  }
  
  public void b(String paramString) {
    this.codigoSimCard = paramString;
  }
  
  public String c() {
    return this.latitude;
  }
  
  public void c(String paramString) {
    this.latitude = paramString;
  }
  
  public String d() {
    return this.longitude;
  }
  
  public void d(String paramString) {
    this.longitude = paramString;
  }
  
  public String e() {
    return this.modeloDevice;
  }
  
  public void e(String paramString) {
    this.modeloDevice = paramString;
  }
  
  public String f() {
    return this.nomeDevice;
  }
  
  public void f(String paramString) {
    this.nomeDevice = paramString;
  }
  
  public String g() {
    return this.ipExterno;
  }
  
  public void g(String paramString) {
    this.ipExterno = paramString;
  }
  
  public String h() {
    return this.ipInterno;
  }
  
  public void h(String paramString) {
    this.ipInterno = paramString;
  }
  
  public String i() {
    return this.operadora;
  }
  
  public void i(String paramString) {
    this.operadora = paramString;
  }
  
  public String j() {
    return this.documento;
  }
  
  public void j(String paramString) {
    this.documento = paramString;
  }
  
  public String k() {
    return this.ticket;
  }
  
  public void k(String paramString) {
    this.ticket = paramString;
  }
  
  public boolean l() {
    return (this.latitude != null && !this.latitude.isEmpty() && this.longitude != null && !this.longitude.isEmpty());
  }
  
  public boolean m() {
    return (this.latitude != null && !this.latitude.isEmpty() && this.longitude != null && !this.longitude.isEmpty() && this.ticket != null && !this.ticket.isEmpty());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ilo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */