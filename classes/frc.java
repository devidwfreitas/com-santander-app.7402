import java.util.ArrayList;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class frc extends gnb {
  private ArrayList<frb> a = new ArrayList<frb>();
  
  @Element
  private String agencia;
  
  @Element
  private String agenciaCredito;
  
  @Element
  private String agenciaDebito;
  
  @Element
  private String autenticacao;
  
  @Element
  private String canal;
  
  @Element
  private String cnpj;
  
  @Element
  private String codCanalAgendto;
  
  @Element
  private String codGrupoAgendto;
  
  @Element
  private String codSolicAgendto;
  
  @Element
  private String codStatusAgendto;
  
  @Element
  private String codigoArea;
  
  @Element
  private String codigoBanco;
  
  @Element
  private String codigoBarra;
  
  @Element
  private String concessionaria;
  
  @Element
  private String confirmacao;
  
  @Element
  private String conta;
  
  @Element
  private String contaCredito;
  
  @Element
  private String contaDebito;
  
  @Element
  private String contaFundoCredito;
  
  @Element
  private String contaPoupancaCredito;
  
  @Element
  private String contaPoupancaDebito;
  
  @Element
  private String cpf;
  
  @Element
  private String dataAgendamento;
  
  @Element
  private String dataAgendto;
  
  @Element
  private String dataHoraSolicitacao;
  
  @Element
  private String dataRecarga;
  
  @Element
  private String dataRecargaCelular;
  
  @Element
  private String dataSolicAgendto;
  
  @Element
  private String dataSolicitada;
  
  @Element
  private String dataVencimento;
  
  @Element
  private String descStatusAgendto;
  
  @Element
  private String descTipoOpera;
  
  @Element
  private String descricao;
  
  @Element
  private String descricaoBanco;
  
  @Element
  private String documentoFavorecido;
  
  @Element
  private String favorecido;
  
  @Element
  private String finalidade;
  
  @Element
  private String historico;
  
  @Element
  private String horaAgendamento;
  
  @Element
  private String horaAgendto;
  
  @Element
  private String horaSolicitada;
  
  @Element
  private String indiceAgendamento;
  
  @Element
  private String ispb;
  
  @Element
  private String mensagemErro;
  
  @Element
  private String nomeTipoAgendto;
  
  @Element
  private String numContratoCDB;
  
  @Element
  private String numProtocolo;
  
  @Element
  private String numProtocoloAgendamento;
  
  @Element
  private String numProtocoloAgendto;
  
  @Element
  private String numeroCartao;
  
  @Element
  private String operadora;
  
  @Element
  private String prazoCDB;
  
  @Element
  private String status;
  
  @Element
  private String subTipoAgendamento;
  
  @Element
  private String taxaCDB;
  
  @Element
  private String telefone;
  
  @Element
  private String tipo;
  
  @Element
  private String tipoAgendamento;
  
  @Element
  private String tipoAgendto;
  
  @Element
  private String tipoTransferencia;
  
  @Element
  private String valor;
  
  @Element
  private String valorAgendto;
  
  @Element
  private String vinculo;
  
  public String A() {
    return this.dataSolicAgendto;
  }
  
  public void A(String paramString) {
    this.dataSolicAgendto = paramString;
  }
  
  public String B() {
    return this.dataAgendamento;
  }
  
  public void B(String paramString) {
    this.dataAgendamento = paramString;
  }
  
  public String C() {
    return this.dataSolicitada;
  }
  
  public void C(String paramString) {
    this.dataSolicitada = paramString;
  }
  
  public String D() {
    return this.descricao;
  }
  
  public void D(String paramString) {
    this.descricao = paramString;
  }
  
  public String E() {
    return this.horaAgendamento;
  }
  
  public void E(String paramString) {
    this.horaAgendamento = paramString;
  }
  
  public String F() {
    return this.horaSolicitada;
  }
  
  public void F(String paramString) {
    this.horaSolicitada = paramString;
  }
  
  public String G() {
    return this.numProtocolo;
  }
  
  public void G(String paramString) {
    this.numProtocolo = paramString;
  }
  
  public String H() {
    return this.status;
  }
  
  public void H(String paramString) {
    this.status = paramString;
  }
  
  public String I() {
    return this.valor;
  }
  
  public void I(String paramString) {
    this.valor = paramString;
  }
  
  public String J() {
    return this.numProtocoloAgendamento;
  }
  
  public void J(String paramString) {
    this.numProtocoloAgendamento = paramString;
  }
  
  public String K() {
    return this.tipoAgendamento;
  }
  
  public void K(String paramString) {
    this.tipoAgendamento = paramString;
  }
  
  public String L() {
    return this.canal;
  }
  
  public void L(String paramString) {
    this.canal = paramString;
  }
  
  public String M() {
    return this.dataHoraSolicitacao;
  }
  
  public void M(String paramString) {
    this.dataHoraSolicitacao = paramString;
  }
  
  public String N() {
    return this.numContratoCDB;
  }
  
  public void N(String paramString) {
    this.numContratoCDB = paramString;
  }
  
  public String O() {
    return this.prazoCDB;
  }
  
  public void O(String paramString) {
    this.prazoCDB = paramString;
  }
  
  public String P() {
    return this.taxaCDB;
  }
  
  public void P(String paramString) {
    this.taxaCDB = paramString;
  }
  
  public String Q() {
    return this.vinculo;
  }
  
  public void Q(String paramString) {
    this.vinculo = paramString;
  }
  
  public String R() {
    return this.contaDebito;
  }
  
  public void R(String paramString) {
    this.contaDebito = paramString;
  }
  
  public String S() {
    return this.contaFundoCredito;
  }
  
  public void S(String paramString) {
    this.contaFundoCredito = paramString;
  }
  
  public String T() {
    return this.contaPoupancaCredito;
  }
  
  public void T(String paramString) {
    this.contaPoupancaCredito = paramString;
  }
  
  public String U() {
    return this.tipo;
  }
  
  public void U(String paramString) {
    this.tipo = paramString;
  }
  
  public String V() {
    return this.dataVencimento;
  }
  
  public void V(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String W() {
    return this.numeroCartao;
  }
  
  public void W(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String X() {
    return this.codigoBarra;
  }
  
  public void X(String paramString) {
    this.codigoBarra = paramString;
  }
  
  public String Y() {
    return this.concessionaria;
  }
  
  public void Y(String paramString) {
    this.concessionaria = paramString;
  }
  
  public String Z() {
    return this.agencia;
  }
  
  public void Z(String paramString) {
    this.agencia = paramString;
  }
  
  public String a() {
    return this.agenciaDebito;
  }
  
  public void a(frb paramfrb) {
    if (this.a == null)
      this.a = new ArrayList<frb>(); 
    this.a.add(paramfrb);
  }
  
  public void a(String paramString) {
    this.agenciaDebito = paramString;
  }
  
  public String aa() {
    return this.conta;
  }
  
  public void aa(String paramString) {
    this.conta = paramString;
  }
  
  public String ab() {
    return this.documentoFavorecido;
  }
  
  public void ab(String paramString) {
    this.documentoFavorecido = paramString;
  }
  
  public String ac() {
    return this.favorecido;
  }
  
  public void ac(String paramString) {
    this.favorecido = paramString;
  }
  
  public String ad() {
    return this.finalidade;
  }
  
  public void ad(String paramString) {
    this.finalidade = paramString;
  }
  
  public String ae() {
    return this.historico;
  }
  
  public void ae(String paramString) {
    this.historico = paramString;
  }
  
  public String af() {
    return this.ispb;
  }
  
  public void af(String paramString) {
    this.ispb = paramString;
  }
  
  public String ag() {
    return this.telefone;
  }
  
  public void ag(String paramString) {
    this.telefone = paramString;
  }
  
  public String ah() {
    return this.operadora;
  }
  
  public void ah(String paramString) {
    this.operadora = paramString;
  }
  
  public ArrayList<frb> ai() {
    return this.a;
  }
  
  public String b() {
    return this.agenciaCredito;
  }
  
  public void b(String paramString) {
    this.agenciaCredito = paramString;
  }
  
  public String c() {
    return this.tipoTransferencia;
  }
  
  public void c(String paramString) {
    this.tipoTransferencia = paramString;
  }
  
  public String d() {
    return this.dataRecarga;
  }
  
  public void d(String paramString) {
    this.dataRecarga = paramString;
  }
  
  public String e() {
    return this.codigoArea;
  }
  
  public void e(String paramString) {
    this.codigoArea = paramString;
  }
  
  public String f() {
    return this.indiceAgendamento;
  }
  
  public void f(String paramString) {
    this.indiceAgendamento = paramString;
  }
  
  public String g() {
    return this.contaCredito;
  }
  
  public void g(String paramString) {
    this.contaCredito = paramString;
  }
  
  public String getAutenticacao() {
    return this.autenticacao;
  }
  
  public String getConfirmacao() {
    return this.confirmacao;
  }
  
  public String getMensagemErro() {
    return this.mensagemErro;
  }
  
  public String h() {
    return this.contaPoupancaDebito;
  }
  
  public void h(String paramString) {
    this.contaPoupancaDebito = paramString;
  }
  
  public String i() {
    return this.cnpj;
  }
  
  public void i(String paramString) {
    this.cnpj = paramString;
  }
  
  public String j() {
    return this.cpf;
  }
  
  public void j(String paramString) {
    this.cpf = paramString;
  }
  
  public String k() {
    return this.dataRecargaCelular;
  }
  
  public void k(String paramString) {
    this.dataRecargaCelular = paramString;
  }
  
  public String l() {
    return this.subTipoAgendamento;
  }
  
  public void l(String paramString) {
    this.subTipoAgendamento = paramString;
  }
  
  public String m() {
    return this.descricaoBanco;
  }
  
  public void m(String paramString) {
    this.descricaoBanco = paramString;
  }
  
  public String n() {
    return this.codigoBanco;
  }
  
  public void n(String paramString) {
    this.codigoBanco = paramString;
  }
  
  public String o() {
    return this.codCanalAgendto;
  }
  
  public void o(String paramString) {
    this.codCanalAgendto = paramString;
  }
  
  public String p() {
    return this.codGrupoAgendto;
  }
  
  public void p(String paramString) {
    this.codGrupoAgendto = paramString;
  }
  
  public String q() {
    return this.codStatusAgendto;
  }
  
  public void q(String paramString) {
    this.codStatusAgendto = paramString;
  }
  
  public String r() {
    return this.dataAgendto;
  }
  
  public void r(String paramString) {
    this.dataAgendto = paramString;
  }
  
  public String s() {
    return this.codSolicAgendto;
  }
  
  public void s(String paramString) {
    this.codSolicAgendto = paramString;
  }
  
  public void setAutenticacao(String paramString) {
    this.autenticacao = paramString;
  }
  
  public void setConfirmacao(String paramString) {
    this.confirmacao = paramString;
  }
  
  public void setMensagemErro(String paramString) {
    this.mensagemErro = paramString;
  }
  
  public String t() {
    return this.descTipoOpera;
  }
  
  public void t(String paramString) {
    this.descTipoOpera = paramString;
  }
  
  public String u() {
    return this.horaAgendto;
  }
  
  public void u(String paramString) {
    this.horaAgendto = paramString;
  }
  
  public String v() {
    return this.nomeTipoAgendto;
  }
  
  public void v(String paramString) {
    this.nomeTipoAgendto = paramString;
  }
  
  public String w() {
    return this.numProtocoloAgendto;
  }
  
  public void w(String paramString) {
    this.numProtocoloAgendto = paramString;
  }
  
  public String x() {
    return this.tipoAgendto;
  }
  
  public void x(String paramString) {
    this.tipoAgendto = paramString;
  }
  
  public String y() {
    return naj.f(this.valorAgendto);
  }
  
  public void y(String paramString) {
    this.valorAgendto = paramString;
  }
  
  public String z() {
    return this.descStatusAgendto;
  }
  
  public void z(String paramString) {
    this.descStatusAgendto = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\frc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */