import java.io.Serializable;
import java.util.List;

public class hxo implements Serializable {
  private String a;
  
  private fvb b;
  
  private List<hxw> c;
  
  private List<hxp> d;
  
  private hxk e;
  
  private hxk f;
  
  private hxq g;
  
  private String h;
  
  private String i;
  
  private String j;
  
  public String a() {
    return this.a;
  }
  
  public void a(fvb paramfvb) {
    this.b = paramfvb;
  }
  
  public void a(hxk paramhxk) {
    this.e = paramhxk;
  }
  
  public void a(hxq paramhxq) {
    this.g = paramhxq;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<hxw> paramList) {
    this.c = paramList;
  }
  
  public fvb b() {
    return this.b;
  }
  
  public void b(hxk paramhxk) {
    this.f = paramhxk;
  }
  
  public void b(String paramString) {
    this.h = paramString;
  }
  
  public void b(List<hxp> paramList) {
    this.d = paramList;
  }
  
  public List<hxw> c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.j = paramString;
  }
  
  public List<hxp> d() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.i = paramString;
  }
  
  public hxk e() {
    return this.e;
  }
  
  public hxk f() {
    return this.f;
  }
  
  public String g() {
    return this.h;
  }
  
  public hxq h() {
    return this.g;
  }
  
  public void i() {
    b("HABILITADO_PARA_ACORDO");
  }
  
  public void j() {
    b((String)null);
  }
  
  public boolean k() {
    return (this.h != null && this.h.equalsIgnoreCase("HABILITADO_PARA_ACORDO"));
  }
  
  public boolean l() {
    return (this.i != null && this.i.equalsIgnoreCase("S"));
  }
  
  public boolean m() {
    return (this.j != null && this.j.equalsIgnoreCase("S"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */