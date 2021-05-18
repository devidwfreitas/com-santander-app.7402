import java.util.Calendar;
import org.simpleframework.xml.Element;

public class hlb implements hxl {
  private hlh a;
  
  private String b;
  
  @Element(required = false)
  protected String codigoContrato;
  
  @Element(required = false)
  protected String codigoEvento;
  
  @Element(required = false)
  protected String codigoNIO;
  
  @Element(required = false)
  protected String codigoOficina;
  
  @Element(required = false)
  protected String dataOperacao;
  
  @Element(required = false)
  protected String quantidadeParcela;
  
  @Element(required = false)
  protected String valor;
  
  public String A() {
    return this.b;
  }
  
  public String B() {
    return this.a.f();
  }
  
  public int a() {
    return 10;
  }
  
  public void a(hlh paramhlh) {
    this.a = paramhlh;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public int b() {
    return 1;
  }
  
  public String c() {
    return this.codigoContrato;
  }
  
  public String d() {
    return "0033".concat(this.codigoOficina).concat(this.codigoContrato);
  }
  
  public boolean e() {
    return false;
  }
  
  public boolean f() {
    return false;
  }
  
  public String g() {
    try {
      return hyx.b().format(hyx.b(this.valor));
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public int h() {
    return hyx.e(this.quantidadeParcela);
  }
  
  public int i() {
    return hyx.e(this.quantidadeParcela);
  }
  
  public String j() {
    return null;
  }
  
  public String k() {
    return "";
  }
  
  public String l() {
    return null;
  }
  
  public String m() {
    return null;
  }
  
  public String n() {
    return "Crédito Pessoal";
  }
  
  public String o() {
    return null;
  }
  
  public String p() {
    return null;
  }
  
  public String q() {
    return null;
  }
  
  public String r() {
    return null;
  }
  
  public String s() {
    return null;
  }
  
  public String t() {
    return this.dataOperacao;
  }
  
  public String u() {
    try {
      Calendar calendar = hyx.a(t(), "yyyy-MM-dd");
      return hyx.c("dd/MM/yyy").format(calendar.getTime());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String v() {
    return null;
  }
  
  public int w() {
    return 0;
  }
  
  public String x() {
    return null;
  }
  
  public boolean y() {
    return true;
  }
  
  public hlh z() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hlb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */