import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hjb extends gnb implements Serializable {
  private static final long a = 1L;
  
  @Element(required = false)
  private hja cet13;
  
  @Element(required = false)
  private String dataSolicitacao;
  
  @Element(required = false)
  private String dataVencimento;
  
  @Element(required = false)
  private String horaSolicitacao;
  
  @Element(required = false)
  private String prazoTotalOperacao;
  
  @Element(required = false)
  private String valorEmprestimo;
  
  @Element(required = false)
  private String valorIOF;
  
  @Element(required = false)
  private String valorParcelaVencimento;
  
  @Element(required = false)
  private String valorTotalComEncargos;
  
  @Element(required = false)
  private String valorTotalFinanciado;
  
  @Element(required = false)
  private String vlTotalJuros;
  
  public String a() {
    return this.dataSolicitacao;
  }
  
  public void a(hja paramhja) {
    this.cet13 = paramhja;
  }
  
  public void a(String paramString) {
    this.dataSolicitacao = paramString;
  }
  
  public String b() {
    return this.dataVencimento;
  }
  
  public void b(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String c() {
    return this.horaSolicitacao;
  }
  
  public void c(String paramString) {
    this.horaSolicitacao = paramString;
  }
  
  public String d() {
    return this.prazoTotalOperacao;
  }
  
  public void d(String paramString) {
    this.prazoTotalOperacao = paramString;
  }
  
  public String e() {
    return this.valorEmprestimo;
  }
  
  public void e(String paramString) {
    this.valorEmprestimo = paramString;
  }
  
  public String f() {
    return this.valorIOF;
  }
  
  public void f(String paramString) {
    this.valorIOF = paramString;
  }
  
  public String g() {
    return this.valorParcelaVencimento;
  }
  
  public void g(String paramString) {
    this.valorParcelaVencimento = paramString;
  }
  
  public String h() {
    return this.valorTotalComEncargos;
  }
  
  public void h(String paramString) {
    this.valorTotalComEncargos = paramString;
  }
  
  public String i() {
    return this.valorTotalFinanciado;
  }
  
  public void i(String paramString) {
    this.valorTotalFinanciado = paramString;
  }
  
  public String j() {
    return this.vlTotalJuros;
  }
  
  public void j(String paramString) {
    this.vlTotalJuros = paramString;
  }
  
  public hja k() {
    return this.cet13;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hjb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */