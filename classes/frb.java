import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class frb extends frd implements Serializable {
  private static final long a = 1L;
  
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String agenciaCredito;
  
  @Element(required = false)
  private String agenciaDebito;
  
  @Element(required = false)
  private String autenticacao;
  
  @Element(required = false)
  private String canal;
  
  @Element(required = false)
  private String cnpj;
  
  @Element(required = false)
  private String codCanalAgendto;
  
  @Element(required = false)
  private String codGrupoAgendto;
  
  @Element(required = false)
  private String codSolicAgendto;
  
  @Element(required = false)
  private String codStatusAgendto;
  
  @Element(required = false)
  private String codigoArea;
  
  @Element(required = false)
  private String codigoBanco;
  
  @Element(required = false)
  private String codigoBarra;
  
  @Element(required = false)
  private String codigoConcessionaria;
  
  @Element(required = false)
  private String concessionaria;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String contaCredito;
  
  @Element(required = false)
  private String contaDebito;
  
  @Element(required = false)
  private String contaFundoCredito;
  
  @Element(required = false)
  private String contaFundoDebito;
  
  @Element(required = false)
  private String contaPoupancaCredito;
  
  @Element(required = false)
  private String contaPoupancaDebito;
  
  @Element(required = false)
  private String cpf;
  
  @Element(required = false)
  private String dataAgendamento;
  
  @Element(required = false)
  private String dataAgendto;
  
  @Element(required = false)
  private String dataHoraSolicitacao;
  
  @Element(required = false)
  private String dataHoraTransacao;
  
  @Element(required = false)
  private String dataRecarga;
  
  @Element(required = false)
  private String dataRecargaCelular;
  
  @Element(required = false)
  private String dataSolicAgendto;
  
  @Element(required = false)
  private String dataSolicitada;
  
  @Element(required = false)
  private String dataVencimento;
  
  @Element(required = false)
  private String descStatusAgendto;
  
  @Element(required = false)
  private String descTipoOpera;
  
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String descricaoBanco;
  
  @Element(required = false)
  private String descricaoConcessionaria;
  
  @Element(required = false)
  private String documentoFavorecido;
  
  @Element(required = false)
  private String favorecido;
  
  @Element(required = false)
  private String finalidade;
  
  @Element(required = false)
  private String historico;
  
  @Element(required = false)
  private String horaAgendamento;
  
  @Element(required = false)
  private String horaAgendto;
  
  @Element(required = false)
  private String horaSolicitada;
  
  @Element(required = false)
  private String indiceAgendamento;
  
  @Element(required = false)
  private String ispb;
  
  @Element(name = "listaAgendamentos", required = false)
  private fre listaAgendamentos;
  
  @Element(required = false)
  private String mensagemErro;
  
  @Element(required = false)
  private String nomeAgenciaCredito;
  
  @Element(required = false)
  private String nomeTipoAgendto;
  
  @Element(required = false)
  private String numContratoCDB;
  
  @Element(required = false)
  private String numProtocolo;
  
  @Element(required = false)
  private String numProtocoloAgendamento;
  
  @Element(required = false)
  private String numProtocoloAgendto;
  
  @Element(required = false)
  private String numeroCartao;
  
  @Element(required = false)
  private String operadora;
  
  @Element(required = false)
  private String prazoCDB;
  
  @Element(required = false)
  private String status;
  
  @Element(required = false)
  private String subTipoAgendamento;
  
  @Element(required = false)
  private String taxaCDB;
  
  @Element(required = false)
  private String telefone;
  
  @Element(required = false)
  private String tipo;
  
  @Element(required = false)
  private String tipoAgendamento;
  
  @Element(required = false)
  private String tipoAgendto;
  
  @Element(required = false)
  private String tipoTransferencia;
  
  @Element(required = false)
  private String valor;
  
  @Element(required = false)
  private String valorAgendto;
  
  @Element(required = false)
  private String vinculo;
  
  public String A() {
    return this.codSolicAgendto;
  }
  
  public void A(String paramString) {
    this.descTipoOpera = paramString;
  }
  
  public String B() {
    return this.descTipoOpera;
  }
  
  public void B(String paramString) {
    this.horaAgendto = paramString;
  }
  
  public String C() {
    return this.horaAgendto;
  }
  
  public void C(String paramString) {
    this.nomeTipoAgendto = paramString;
  }
  
  public String D() {
    return this.nomeTipoAgendto;
  }
  
  public void D(String paramString) {
    this.numProtocoloAgendto = paramString;
  }
  
  public String E() {
    return this.numProtocoloAgendto;
  }
  
  public void E(String paramString) {
    this.tipoAgendto = paramString;
  }
  
  public String F() {
    return this.tipoAgendto;
  }
  
  public void F(String paramString) {
    this.valorAgendto = paramString;
  }
  
  public String G() {
    return naj.f(this.valorAgendto);
  }
  
  public void G(String paramString) {
    this.descStatusAgendto = paramString;
  }
  
  public String H() {
    return this.descStatusAgendto;
  }
  
  public void H(String paramString) {
    this.dataSolicAgendto = paramString;
  }
  
  public String I() {
    return this.dataSolicAgendto;
  }
  
  public void I(String paramString) {
    this.dataAgendamento = paramString;
  }
  
  public String J() {
    return this.dataAgendamento;
  }
  
  public void J(String paramString) {
    this.dataSolicitada = paramString;
  }
  
  public String K() {
    return this.dataSolicitada;
  }
  
  public void K(String paramString) {
    this.descricao = paramString;
  }
  
  public String L() {
    return this.descricao;
  }
  
  public void L(String paramString) {
    this.horaAgendamento = paramString;
  }
  
  public String M() {
    return this.horaAgendamento;
  }
  
  public void M(String paramString) {
    this.horaSolicitada = paramString;
  }
  
  public String N() {
    return this.horaSolicitada;
  }
  
  public void N(String paramString) {
    this.numProtocolo = paramString;
  }
  
  public String O() {
    return this.numProtocolo;
  }
  
  public void O(String paramString) {
    this.status = paramString;
  }
  
  public String P() {
    return this.status;
  }
  
  public void P(String paramString) {
    this.valor = paramString;
  }
  
  public String Q() {
    return this.valor;
  }
  
  public void Q(String paramString) {
    this.numProtocoloAgendamento = paramString;
  }
  
  public String R() {
    return this.numProtocoloAgendamento;
  }
  
  public void R(String paramString) {
    this.tipoAgendamento = paramString;
  }
  
  public String S() {
    return this.tipoAgendamento;
  }
  
  public void S(String paramString) {
    this.canal = paramString;
  }
  
  public String T() {
    return this.canal;
  }
  
  public void T(String paramString) {
    this.dataHoraSolicitacao = paramString;
  }
  
  public String U() {
    return this.dataHoraSolicitacao;
  }
  
  public void U(String paramString) {
    this.numContratoCDB = paramString;
  }
  
  public String V() {
    return this.numContratoCDB;
  }
  
  public void V(String paramString) {
    this.prazoCDB = paramString;
  }
  
  public String W() {
    return this.prazoCDB;
  }
  
  public void W(String paramString) {
    this.taxaCDB = paramString;
  }
  
  public String X() {
    return this.taxaCDB;
  }
  
  public void X(String paramString) {
    this.vinculo = paramString;
  }
  
  public String Y() {
    return this.vinculo;
  }
  
  public void Y(String paramString) {
    this.contaDebito = paramString;
  }
  
  public String Z() {
    return this.contaDebito;
  }
  
  public void Z(String paramString) {
    this.contaFundoCredito = paramString;
  }
  
  public String a() {
    return this.nomeAgenciaCredito;
  }
  
  public void a(fre paramfre) {
    this.listaAgendamentos = paramfre;
  }
  
  public void a(String paramString) {
    this.nomeAgenciaCredito = paramString;
  }
  
  public String aa() {
    return this.contaFundoCredito;
  }
  
  public void aa(String paramString) {
    this.contaPoupancaCredito = paramString;
  }
  
  public String ab() {
    return this.contaPoupancaCredito;
  }
  
  public void ab(String paramString) {
    this.tipo = paramString;
  }
  
  public String ac() {
    return this.tipo;
  }
  
  public void ac(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String ad() {
    return this.dataVencimento;
  }
  
  public void ad(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String ae() {
    return this.numeroCartao;
  }
  
  public void ae(String paramString) {
    this.codigoBarra = paramString;
  }
  
  public String af() {
    return this.codigoBarra;
  }
  
  public void af(String paramString) {
    this.concessionaria = paramString;
  }
  
  public String ag() {
    return this.concessionaria;
  }
  
  public void ag(String paramString) {
    this.agencia = paramString;
  }
  
  public String ah() {
    return this.agencia;
  }
  
  public void ah(String paramString) {
    this.conta = paramString;
  }
  
  public String ai() {
    return this.conta;
  }
  
  public void ai(String paramString) {
    this.documentoFavorecido = paramString;
  }
  
  public String aj() {
    return this.documentoFavorecido;
  }
  
  public void aj(String paramString) {
    this.favorecido = paramString;
  }
  
  public String ak() {
    return this.favorecido;
  }
  
  public void ak(String paramString) {
    this.finalidade = paramString;
  }
  
  public String al() {
    return this.finalidade;
  }
  
  public void al(String paramString) {
    this.historico = paramString;
  }
  
  public String am() {
    return this.historico;
  }
  
  public void am(String paramString) {
    this.ispb = paramString;
  }
  
  public String an() {
    return this.ispb;
  }
  
  public void an(String paramString) {
    this.telefone = paramString;
  }
  
  public String ao() {
    return this.telefone;
  }
  
  public void ao(String paramString) {
    this.operadora = paramString;
  }
  
  public String ap() {
    return this.operadora;
  }
  
  public String b() {
    return this.contaFundoDebito;
  }
  
  public void b(String paramString) {
    this.contaFundoDebito = paramString;
  }
  
  public String c() {
    return this.codigoConcessionaria;
  }
  
  public void c(String paramString) {
    this.codigoConcessionaria = paramString;
  }
  
  public String d() {
    return this.descricaoConcessionaria;
  }
  
  public void d(String paramString) {
    this.descricaoConcessionaria = paramString;
  }
  
  public fre e() {
    return this.listaAgendamentos;
  }
  
  public void e(String paramString) {
    this.mensagemErro = paramString;
  }
  
  public String f() {
    return this.mensagemErro;
  }
  
  public void f(String paramString) {
    this.agenciaDebito = paramString;
  }
  
  public String g() {
    return this.agenciaDebito;
  }
  
  public void g(String paramString) {
    this.agenciaCredito = paramString;
  }
  
  public String h() {
    return this.agenciaCredito;
  }
  
  public void h(String paramString) {
    this.tipoTransferencia = paramString;
  }
  
  public String i() {
    return this.tipoTransferencia;
  }
  
  public void i(String paramString) {
    this.dataRecarga = paramString;
  }
  
  public String j() {
    return this.dataRecarga;
  }
  
  public void j(String paramString) {
    this.codigoArea = paramString;
  }
  
  public String k() {
    return this.codigoArea;
  }
  
  public void k(String paramString) {
    this.dataHoraTransacao = paramString;
  }
  
  public String l() {
    return this.dataHoraTransacao;
  }
  
  public void l(String paramString) {
    this.autenticacao = paramString;
  }
  
  public String m() {
    return this.autenticacao;
  }
  
  public void m(String paramString) {
    this.indiceAgendamento = paramString;
  }
  
  public String n() {
    return this.indiceAgendamento;
  }
  
  public void n(String paramString) {
    this.contaCredito = paramString;
  }
  
  public String o() {
    return this.contaCredito;
  }
  
  public void o(String paramString) {
    this.contaPoupancaDebito = paramString;
  }
  
  public String p() {
    return this.contaPoupancaDebito;
  }
  
  public void p(String paramString) {
    this.cnpj = paramString;
  }
  
  public String q() {
    return this.cnpj;
  }
  
  public void q(String paramString) {
    this.cpf = paramString;
  }
  
  public String r() {
    return this.cpf;
  }
  
  public void r(String paramString) {
    this.dataRecargaCelular = paramString;
  }
  
  public String s() {
    return this.dataRecargaCelular;
  }
  
  public void s(String paramString) {
    this.subTipoAgendamento = paramString;
  }
  
  public String t() {
    return this.subTipoAgendamento;
  }
  
  public void t(String paramString) {
    this.descricaoBanco = paramString;
  }
  
  public String u() {
    return this.descricaoBanco;
  }
  
  public void u(String paramString) {
    this.codigoBanco = paramString;
  }
  
  public String v() {
    return this.codigoBanco;
  }
  
  public void v(String paramString) {
    this.codCanalAgendto = paramString;
  }
  
  public String w() {
    return this.codCanalAgendto;
  }
  
  public void w(String paramString) {
    this.codGrupoAgendto = paramString;
  }
  
  public String x() {
    return this.codGrupoAgendto;
  }
  
  public void x(String paramString) {
    this.codStatusAgendto = paramString;
  }
  
  public String y() {
    return this.codStatusAgendto;
  }
  
  public void y(String paramString) {
    this.dataAgendto = paramString;
  }
  
  public String z() {
    return this.dataAgendto;
  }
  
  public void z(String paramString) {
    this.codSolicAgendto = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\frb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */