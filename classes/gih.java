import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "request")
public class gih extends goe {
  @Element(required = false)
  private boolean agendamento;
  
  @Element(required = false)
  private String bandeiraCartao;
  
  @Element(required = false)
  private String codigoMoeda;
  
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String contratoCartao;
  
  @Element(required = false)
  private String cotacaoDolar;
  
  @Element(required = false)
  private String custoEfetivoTotal;
  
  @Element(required = false)
  private String dataAgendamento;
  
  @Element(required = false)
  private String dataContabil;
  
  @Element(required = false)
  private String dataEfetivacao;
  
  @Element(required = false)
  private String dataPagamento;
  
  @Element(required = false)
  private String dataVencimento;
  
  @Element(required = false)
  private String despesaConvertida;
  
  @Element(required = false)
  private String despesaReal;
  
  @Element(required = false)
  private String entidade;
  
  @Element(required = false)
  private String horaEfetivacao;
  
  @Element(required = false)
  private String indicadorElegibilidade;
  
  @ElementList(inline = true, required = false)
  private List<gif> listaParcela;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  @Element(required = false)
  private String nomeClientePlasticoCartao;
  
  @Element(required = false)
  private String numReferDocumento;
  
  @Element(required = false)
  private String numeroCartao;
  
  @Element(required = false)
  private String produto;
  
  @Element(required = false)
  private String referOper;
  
  @Element(required = false)
  private String subProduto;
  
  @Element(required = false)
  private String taxaJuros;
  
  @Element(required = false)
  private String tipoFranquia;
  
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
  
  public String A() {
    return this.tipoFranquia;
  }
  
  public void A(String paramString) {
    this.valorFinanciado = paramString;
  }
  
  public String B() {
    return this.tipoParcelamento;
  }
  
  public void B(String paramString) {
    this.valorIOF = paramString;
  }
  
  public String C() {
    return this.valorFinanciado;
  }
  
  public void C(String paramString) {
    this.valorPagamento = paramString;
  }
  
  public String D() {
    return this.valorIOF;
  }
  
  public void D(String paramString) {
    this.valorPagamentoMinimo = paramString;
  }
  
  public String E() {
    return this.valorPagamento;
  }
  
  public void E(String paramString) {
    this.valorTarifa = paramString;
  }
  
  public String F() {
    return this.valorPagamentoMinimo;
  }
  
  public void F(String paramString) {
    this.valorTotal = paramString;
  }
  
  public String G() {
    return this.valorTarifa;
  }
  
  public String H() {
    return this.valorTotal;
  }
  
  public void a(String paramString) {
    this.bandeiraCartao = paramString;
  }
  
  public void a(List<gif> paramList) {
    this.listaParcela = paramList;
  }
  
  public void a(boolean paramBoolean) {
    this.agendamento = paramBoolean;
  }
  
  public boolean a() {
    return this.agendamento;
  }
  
  public String b() {
    return this.bandeiraCartao;
  }
  
  public void b(String paramString) {
    this.codigoMoeda = paramString;
  }
  
  public String c() {
    return this.codigoMoeda;
  }
  
  public void c(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public String d() {
    return this.codigoRetorno;
  }
  
  public void d(String paramString) {
    this.contratoCartao = paramString;
  }
  
  public String e() {
    return this.contratoCartao;
  }
  
  public void e(String paramString) {
    this.cotacaoDolar = paramString;
  }
  
  public String f() {
    return this.cotacaoDolar;
  }
  
  public void f(String paramString) {
    this.custoEfetivoTotal = paramString;
  }
  
  public String g() {
    return this.custoEfetivoTotal;
  }
  
  public void g(String paramString) {
    this.dataAgendamento = paramString;
  }
  
  public String h() {
    return this.dataAgendamento;
  }
  
  public void h(String paramString) {
    this.dataContabil = paramString;
  }
  
  public String i() {
    return this.dataContabil;
  }
  
  public void i(String paramString) {
    this.dataEfetivacao = paramString;
  }
  
  public String j() {
    return this.dataEfetivacao;
  }
  
  public void j(String paramString) {
    this.dataPagamento = paramString;
  }
  
  public String k() {
    return this.dataPagamento;
  }
  
  public void k(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String l() {
    return this.dataVencimento;
  }
  
  public void l(String paramString) {
    this.despesaConvertida = paramString;
  }
  
  public String m() {
    return this.despesaConvertida;
  }
  
  public void m(String paramString) {
    this.despesaReal = paramString;
  }
  
  public String n() {
    return this.despesaReal;
  }
  
  public void n(String paramString) {
    this.entidade = paramString;
  }
  
  public String o() {
    return this.entidade;
  }
  
  public void o(String paramString) {
    this.horaEfetivacao = paramString;
  }
  
  public String p() {
    return this.horaEfetivacao;
  }
  
  public void p(String paramString) {
    this.indicadorElegibilidade = paramString;
  }
  
  public String q() {
    return this.indicadorElegibilidade;
  }
  
  public void q(String paramString) {
    this.mensagemRetorno = paramString;
  }
  
  public List<gif> r() {
    return this.listaParcela;
  }
  
  public void r(String paramString) {
    this.nomeClientePlasticoCartao = paramString;
  }
  
  public String s() {
    return this.mensagemRetorno;
  }
  
  public void s(String paramString) {
    this.numReferDocumento = paramString;
  }
  
  public String t() {
    return this.nomeClientePlasticoCartao;
  }
  
  public void t(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String u() {
    return this.numReferDocumento;
  }
  
  public void u(String paramString) {
    this.produto = paramString;
  }
  
  public String v() {
    return this.numeroCartao;
  }
  
  public void v(String paramString) {
    this.referOper = paramString;
  }
  
  public String w() {
    return this.produto;
  }
  
  public void w(String paramString) {
    this.subProduto = paramString;
  }
  
  public String x() {
    return this.referOper;
  }
  
  public void x(String paramString) {
    this.taxaJuros = paramString;
  }
  
  public String y() {
    return this.subProduto;
  }
  
  public void y(String paramString) {
    this.tipoFranquia = paramString;
  }
  
  public String z() {
    return this.taxaJuros;
  }
  
  public void z(String paramString) {
    this.tipoParcelamento = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gih.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */