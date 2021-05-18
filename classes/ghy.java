import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "request")
public class ghy extends goe {
  @Element(required = false)
  private boolean agendamento;
  
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String contratoCartao;
  
  @Element(required = false)
  private String cotacaoDolar;
  
  @Element(required = false)
  private String dataVencimento;
  
  @Element(required = false)
  private String despesaConvertida;
  
  @Element(required = false)
  private String despesaReal;
  
  @Element(required = false)
  private String entidade;
  
  @Element(required = false)
  private String numeroCartao;
  
  @Element(required = false)
  private String referOper;
  
  @Element(required = false)
  private String tipoParcelamento;
  
  @Element(required = false)
  private String valorPagamento;
  
  @Element(required = false)
  private String valorPagamentoMinimo;
  
  @Element(required = false)
  private String valorTotal;
  
  public void a(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.agendamento = paramBoolean;
  }
  
  public boolean a() {
    return this.agendamento;
  }
  
  public String b() {
    return this.codigoRetorno;
  }
  
  public void b(String paramString) {
    this.contratoCartao = paramString;
  }
  
  public String c() {
    return this.contratoCartao;
  }
  
  public void c(String paramString) {
    this.cotacaoDolar = paramString;
  }
  
  public String d() {
    return this.cotacaoDolar;
  }
  
  public void d(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String e() {
    return this.dataVencimento;
  }
  
  public void e(String paramString) {
    this.despesaConvertida = paramString;
  }
  
  public String f() {
    return this.despesaConvertida;
  }
  
  public void f(String paramString) {
    this.despesaReal = paramString;
  }
  
  public String g() {
    return this.despesaReal;
  }
  
  public void g(String paramString) {
    this.entidade = paramString;
  }
  
  public String h() {
    return this.entidade;
  }
  
  public void h(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String i() {
    return this.numeroCartao;
  }
  
  public void i(String paramString) {
    this.referOper = paramString;
  }
  
  public String j() {
    return this.referOper;
  }
  
  public void j(String paramString) {
    this.tipoParcelamento = paramString;
  }
  
  public String k() {
    return this.tipoParcelamento;
  }
  
  public void k(String paramString) {
    this.valorPagamento = paramString;
  }
  
  public String l() {
    return this.valorPagamento;
  }
  
  public void l(String paramString) {
    this.valorPagamentoMinimo = paramString;
  }
  
  public String m() {
    return this.valorPagamentoMinimo;
  }
  
  public void m(String paramString) {
    this.valorTotal = paramString;
  }
  
  public String n() {
    return this.valorTotal;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ghy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */