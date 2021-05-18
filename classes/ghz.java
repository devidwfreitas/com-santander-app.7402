import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "cartaoFaturaPagamentoResponse")
public class ghz extends gnb {
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
  private String mensagemRetorno;
  
  @Element(required = false)
  private String referOper;
  
  @Element(required = false)
  private String valorAtualizadoFatura;
  
  @Element(required = false)
  private String valorPagamento;
  
  @Element(required = false)
  private String valorPagamentoMinimo;
  
  @Element(required = false)
  private String valorTotal;
  
  public String a() {
    return this.cotacaoDolar;
  }
  
  public void a(String paramString) {
    this.cotacaoDolar = paramString;
  }
  
  public String b() {
    return this.codigoRetorno;
  }
  
  public void b(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public String c() {
    return this.contratoCartao;
  }
  
  public void c(String paramString) {
    this.contratoCartao = paramString;
  }
  
  public String d() {
    return this.dataVencimento;
  }
  
  public void d(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String e() {
    return this.despesaConvertida;
  }
  
  public void e(String paramString) {
    this.despesaConvertida = paramString;
  }
  
  public String f() {
    return this.despesaReal;
  }
  
  public void f(String paramString) {
    this.despesaReal = paramString;
  }
  
  public String g() {
    return this.referOper;
  }
  
  public void g(String paramString) {
    this.referOper = paramString;
  }
  
  public String h() {
    return this.valorPagamento;
  }
  
  public void h(String paramString) {
    this.valorPagamento = paramString;
  }
  
  public String i() {
    return this.valorPagamentoMinimo;
  }
  
  public void i(String paramString) {
    this.valorPagamentoMinimo = paramString;
  }
  
  public String j() {
    return this.valorTotal;
  }
  
  public void j(String paramString) {
    this.valorTotal = paramString;
  }
  
  public String k() {
    return this.valorAtualizadoFatura;
  }
  
  public void k(String paramString) {
    this.valorAtualizadoFatura = paramString;
  }
  
  public String l() {
    return this.mensagemRetorno;
  }
  
  public void l(String paramString) {
    this.mensagemRetorno = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ghz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */