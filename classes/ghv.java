import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "cartaoFaturaPagamentoResponse")
public class ghv extends gnb {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private boolean agendamento;
  
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String contratoCartao;
  
  @Element(required = false)
  private String cotacaoDolar;
  
  @Element(required = false)
  private String custoEfetivoTotal;
  
  @Element(required = false)
  private String dataVencimento;
  
  @Element(required = false)
  private String despesaConvertida;
  
  @Element(required = false)
  private String despesaReal;
  
  @Element(required = false)
  private String entidade;
  
  @ElementList(inline = true, required = false)
  private List<gif> listaParcela;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  @Element(required = false)
  private String numeroCartao;
  
  @Element(required = false)
  private String penumper;
  
  @Element(required = false)
  private String referOper;
  
  @Element(required = false)
  private String taxaJuros;
  
  @Element(required = false)
  private String tipoParcelamento;
  
  @Element(required = false)
  private String valorFinanciado;
  
  @Element(required = false)
  private String valorIOF;
  
  @Element(required = false)
  private String valorPagamento;
  
  @Element(required = false)
  private String valorPagamentoMinimo;
  
  @Element(required = false)
  private String valorTarifa;
  
  @Element(required = false)
  private String valorTotal;
  
  public String a() {
    return this.agencia;
  }
  
  public void a(String paramString) {
    this.agencia = paramString;
  }
  
  public void a(List<gif> paramList) {
    this.listaParcela = paramList;
  }
  
  public void a(boolean paramBoolean) {
    this.agendamento = paramBoolean;
  }
  
  public void b(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public boolean b() {
    return this.agendamento;
  }
  
  public String c() {
    return this.codigoRetorno;
  }
  
  public void c(String paramString) {
    this.contratoCartao = paramString;
  }
  
  public String d() {
    return this.contratoCartao;
  }
  
  public void d(String paramString) {
    this.cotacaoDolar = paramString;
  }
  
  public String e() {
    return this.cotacaoDolar;
  }
  
  public void e(String paramString) {
    this.custoEfetivoTotal = paramString;
  }
  
  public String f() {
    return this.custoEfetivoTotal;
  }
  
  public void f(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String g() {
    return this.dataVencimento;
  }
  
  public void g(String paramString) {
    this.despesaConvertida = paramString;
  }
  
  public String h() {
    return this.despesaConvertida;
  }
  
  public void h(String paramString) {
    this.despesaReal = paramString;
  }
  
  public String i() {
    return this.despesaReal;
  }
  
  public void i(String paramString) {
    this.entidade = paramString;
  }
  
  public String j() {
    return this.entidade;
  }
  
  public void j(String paramString) {
    this.mensagemRetorno = paramString;
  }
  
  public List<gif> k() {
    return this.listaParcela;
  }
  
  public void k(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String l() {
    return this.mensagemRetorno;
  }
  
  public void l(String paramString) {
    this.penumper = paramString;
  }
  
  public String m() {
    return this.numeroCartao;
  }
  
  public void m(String paramString) {
    this.referOper = paramString;
  }
  
  public String n() {
    return this.penumper;
  }
  
  public void n(String paramString) {
    this.taxaJuros = paramString;
  }
  
  public String o() {
    return this.referOper;
  }
  
  public void o(String paramString) {
    this.tipoParcelamento = paramString;
  }
  
  public String p() {
    return this.taxaJuros;
  }
  
  public void p(String paramString) {
    this.valorFinanciado = paramString;
  }
  
  public String q() {
    return this.tipoParcelamento;
  }
  
  public void q(String paramString) {
    this.valorIOF = paramString;
  }
  
  public String r() {
    return this.valorFinanciado;
  }
  
  public void r(String paramString) {
    this.valorPagamento = paramString;
  }
  
  public String s() {
    return this.valorIOF;
  }
  
  public void s(String paramString) {
    this.valorPagamentoMinimo = paramString;
  }
  
  public String t() {
    return this.valorPagamento;
  }
  
  public void t(String paramString) {
    this.valorTarifa = paramString;
  }
  
  public String u() {
    return this.valorPagamentoMinimo;
  }
  
  public void u(String paramString) {
    this.valorTotal = paramString;
  }
  
  public String v() {
    return this.valorTarifa;
  }
  
  public String w() {
    return this.valorTotal;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ghv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */