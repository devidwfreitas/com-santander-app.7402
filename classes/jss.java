import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class jss extends goe implements Serializable {
  @Element
  private String codigoBarra;
  
  @Element
  private String dtAgendamentoYYYYMMDD;
  
  @Element(required = false)
  private String dtVencimentoYYYYMMDD;
  
  @Element
  private String flagAgendamento;
  
  @Element(required = false)
  private String nomeCedente;
  
  @Element(required = false)
  private String numCartaoCredito;
  
  @Element(required = false)
  private String valor;
  
  public String a() {
    return this.numCartaoCredito;
  }
  
  public void a(String paramString) {
    this.numCartaoCredito = paramString;
  }
  
  public String b() {
    return this.valor;
  }
  
  public void b(String paramString) {
    this.valor = paramString;
  }
  
  public String c() {
    return this.dtVencimentoYYYYMMDD;
  }
  
  public void c(String paramString) {
    this.dtVencimentoYYYYMMDD = paramString;
  }
  
  public String d() {
    return this.codigoBarra;
  }
  
  public void d(String paramString) {
    this.codigoBarra = paramString;
  }
  
  public String e() {
    return this.dtAgendamentoYYYYMMDD;
  }
  
  public void e(String paramString) {
    this.dtAgendamentoYYYYMMDD = paramString;
  }
  
  public String f() {
    return this.flagAgendamento;
  }
  
  public void f(String paramString) {
    this.flagAgendamento = paramString;
  }
  
  public String g() {
    return this.nomeCedente;
  }
  
  public void g(String paramString) {
    this.nomeCedente = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jss.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */