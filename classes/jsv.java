import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class jsv extends goe implements Serializable {
  @Element(required = false)
  private String codigoBarra;
  
  @Element(required = false)
  private String dtAgendamentoYYYYMMDD;
  
  @Element(required = false)
  private String dtVencimentoYYYYMMDD;
  
  @Element(required = false)
  private String flagAgendamento;
  
  @Element(required = false)
  private String numCartaoCredito;
  
  @Element(required = false)
  private String objSerial;
  
  @Element(required = false)
  private String transacao;
  
  @Element(required = false)
  private String valor;
  
  public String a() {
    return this.codigoBarra;
  }
  
  public void a(String paramString) {
    this.codigoBarra = paramString;
  }
  
  public String b() {
    return this.dtVencimentoYYYYMMDD;
  }
  
  public void b(String paramString) {
    this.dtVencimentoYYYYMMDD = paramString;
  }
  
  public String c() {
    return this.objSerial;
  }
  
  public void c(String paramString) {
    this.objSerial = paramString;
  }
  
  public String d() {
    return this.numCartaoCredito;
  }
  
  public void d(String paramString) {
    this.numCartaoCredito = paramString;
  }
  
  public String e() {
    return this.transacao;
  }
  
  public void e(String paramString) {
    this.transacao = paramString;
  }
  
  public String f() {
    return this.valor;
  }
  
  public void f(String paramString) {
    this.valor = paramString;
  }
  
  public String g() {
    return this.dtAgendamentoYYYYMMDD;
  }
  
  public void g(String paramString) {
    this.dtAgendamentoYYYYMMDD = paramString;
  }
  
  public String h() {
    return this.flagAgendamento;
  }
  
  public void h(String paramString) {
    this.flagAgendamento = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jsv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */