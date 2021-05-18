import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "walletAuthenticateRequest")
public class jcv implements Serializable {
  @Element(required = false)
  private String args;
  
  @Element(required = false)
  private String connUuid;
  
  @Element(required = false)
  private String dadosDispositivo;
  
  @Element(required = false)
  private String dataLynx;
  
  @Element(required = false)
  private String deviceToken;
  
  @Element(required = false)
  private String imei;
  
  @Element(required = false)
  private String requestId;
  
  @Element(required = false)
  private String ticket;
  
  @Element(required = false)
  private String versao;
  
  public String a() {
    return this.connUuid;
  }
  
  public void a(String paramString) {
    this.connUuid = paramString;
  }
  
  public String b() {
    return this.requestId;
  }
  
  public void b(String paramString) {
    this.requestId = paramString;
  }
  
  public String c() {
    return this.args;
  }
  
  public void c(String paramString) {
    this.args = paramString;
  }
  
  public String d() {
    return this.imei;
  }
  
  public void d(String paramString) {
    this.imei = paramString;
  }
  
  public String e() {
    return this.ticket;
  }
  
  public void e(String paramString) {
    this.ticket = paramString;
  }
  
  public String f() {
    return this.dadosDispositivo;
  }
  
  public void f(String paramString) {
    this.dadosDispositivo = paramString;
  }
  
  public String g() {
    return this.dataLynx;
  }
  
  public void g(String paramString) {
    this.dataLynx = paramString;
  }
  
  public String h() {
    return this.versao;
  }
  
  public void h(String paramString) {
    this.versao = paramString;
  }
  
  public String i() {
    return this.deviceToken;
  }
  
  public void i(String paramString) {
    this.deviceToken = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jcv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */