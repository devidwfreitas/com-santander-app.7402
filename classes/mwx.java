import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "idCso")
public class mwx {
  private String a;
  
  @Element(required = false)
  private boolean ativo;
  
  @Element(required = false)
  private String desafio;
  
  @Element(required = false)
  private String finalCSO;
  
  @Element(required = false)
  private String id;
  
  @Element(required = false)
  private String sequencia;
  
  @Element(required = false)
  private String status;
  
  public String a() {
    return this.id;
  }
  
  public void a(String paramString) {
    this.id = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.ativo = paramBoolean;
  }
  
  public String b() {
    return this.sequencia;
  }
  
  public void b(String paramString) {
    this.sequencia = paramString;
  }
  
  public String c() {
    return this.desafio;
  }
  
  public void c(String paramString) {
    this.desafio = paramString;
  }
  
  public void d(String paramString) {
    this.status = paramString;
  }
  
  public boolean d() {
    return this.ativo;
  }
  
  public String e() {
    return this.status;
  }
  
  public void e(String paramString) {
    this.finalCSO = paramString;
  }
  
  public String f() {
    return this.finalCSO;
  }
  
  public void f(String paramString) {
    this.a = paramString;
  }
  
  public String g() {
    return this.a;
  }
  
  public String toString() {
    return "CSOModel [id=" + this.id + ", sequencia=" + this.sequencia + ", desafio=" + this.desafio + ", ativo=" + this.ativo + ", status=" + this.status + ", finalCSO=" + this.finalCSO + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mwx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */