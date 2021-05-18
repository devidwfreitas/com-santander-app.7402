import java.io.Serializable;
import org.simpleframework.xml.Element;

public class jdx implements Serializable, Cloneable, Comparable<jdx> {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String aplicacaoAdicional;
  
  @Element(required = false)
  private String aplicacaoMinima;
  
  @Element(required = false)
  private jdk botaoFundoEnumSelected;
  
  @Element(required = false)
  private String codFundoLamina;
  
  @Element(required = false)
  private String codigoContaCorrente;
  
  @Element(required = false)
  private String codigoCor;
  
  @Element(required = false)
  private String codigoFundo;
  
  @Element(required = false)
  private String contaFundo;
  
  @Element(required = false)
  private jdu contaFundoAdapter;
  
  @Element(required = false)
  private String contaSelecionada;
  
  @Element(required = false)
  private String cotaFechamento;
  
  @Element(required = false)
  private String dataAplicar;
  
  @Element(required = false)
  private String dataCota;
  
  @Element(required = false)
  private String descricaoCotaAplicacao;
  
  @Element(required = false)
  private String descricaoCotaResgate;
  
  @Element(required = false)
  private String descricaoCreditoEmConta;
  
  @Element(required = false)
  private boolean flagAgendamento;
  
  @Element(required = false)
  private boolean flagAplicar;
  
  @Element(required = false)
  private boolean flagCancelar;
  
  @Element(required = false)
  private boolean flagExtrato;
  
  @Element(required = false)
  private String flagIOF;
  
  @Element(required = false)
  private String flagIR;
  
  @Element(required = false)
  private boolean flagReaplicar;
  
  @Element(required = false)
  private boolean flagResgatar;
  
  @Element(required = false)
  private String horarioLimite;
  
  @Element(required = false)
  private boolean isDesenquadramento;
  
  @Element(required = false)
  private String labelAplicacaoMinimaAdicional;
  
  @Element(required = false)
  private String labelTransacao;
  
  @Element(required = false)
  private jeb legendaCotasAplicacao;
  
  @Element(required = false)
  private jec legendaCotasFechamento;
  
  @Element(required = false)
  private jed legendaCotasResgate;
  
  @Element(required = false)
  private jee legendaCreditoEmConta;
  
  @Element(required = false)
  private jef legendaRentabilidade12;
  
  @Element(required = false)
  private jeg legendaTaxaAdm;
  
  @Element(required = false)
  private jeh legendaTaxaPerformance;
  
  @Element(required = false)
  private jei legendaUltimoMes;
  
  @Element(required = false)
  private String nomeFamilia;
  
  @Element(required = false)
  private String nomeReduzidoIb;
  
  @Element(required = false)
  private String rentabilidade12;
  
  @Element(required = false)
  private String rentabilidade24;
  
  @Element(required = false)
  private String rentabilidade36;
  
  @Element(required = false)
  private String rentabilidadeAno;
  
  @Element(required = false)
  private String rentabilidadeUltimoMes;
  
  @Element(required = false)
  private String risco;
  
  @Element(required = false)
  private String saldoBruto;
  
  @Element(required = false)
  private String saldoMinimoPermanencia;
  
  @Element(required = false)
  private String taxaAdm;
  
  @Element(required = false)
  private String taxaPerformance;
  
  @Element(required = false)
  private String tipoFamilia;
  
  @Element(required = false)
  private String valorAplicar;
  
  @Element(required = false)
  private String valorDisponivelRegaste;
  
  @Element(required = false)
  private String valorMaximoResgate;
  
  @Element(required = false)
  private String valorMinimoResgate;
  
  public String A() {
    return this.flagIOF;
  }
  
  public void A(String paramString) {
    this.saldoMinimoPermanencia = paramString;
  }
  
  public String B() {
    return this.flagIR;
  }
  
  public void B(String paramString) {
    this.taxaAdm = paramString;
  }
  
  public String C() {
    return this.horarioLimite;
  }
  
  public void C(String paramString) {
    this.taxaPerformance = paramString;
  }
  
  public jeb D() {
    return this.legendaCotasAplicacao;
  }
  
  public void D(String paramString) {
    this.tipoFamilia = paramString;
  }
  
  public jec E() {
    return this.legendaCotasFechamento;
  }
  
  public void E(String paramString) {
    this.dataCota = paramString;
  }
  
  public jed F() {
    return this.legendaCotasResgate;
  }
  
  public void F(String paramString) {
    this.saldoBruto = paramString;
  }
  
  public jee G() {
    return this.legendaCreditoEmConta;
  }
  
  public void G(String paramString) {
    this.valorDisponivelRegaste = paramString;
  }
  
  public jef H() {
    return this.legendaRentabilidade12;
  }
  
  public void H(String paramString) {
    this.agencia = paramString;
  }
  
  public jeg I() {
    return this.legendaTaxaAdm;
  }
  
  public void I(String paramString) {
    this.descricaoCotaResgate = paramString;
  }
  
  public jeh J() {
    return this.legendaTaxaPerformance;
  }
  
  public void J(String paramString) {
    this.descricaoCreditoEmConta = paramString;
  }
  
  public jei K() {
    return this.legendaUltimoMes;
  }
  
  public void K(String paramString) {
    this.descricaoCotaAplicacao = paramString;
  }
  
  public String L() {
    return this.nomeFamilia;
  }
  
  public String M() {
    return this.nomeReduzidoIb;
  }
  
  public String N() {
    return this.rentabilidade12;
  }
  
  public String O() {
    return this.rentabilidade24;
  }
  
  public String P() {
    return this.rentabilidade36;
  }
  
  public String Q() {
    return this.rentabilidadeAno;
  }
  
  public String R() {
    return this.rentabilidadeUltimoMes;
  }
  
  public String S() {
    return this.saldoMinimoPermanencia;
  }
  
  public String T() {
    return this.taxaAdm;
  }
  
  public String U() {
    return this.taxaPerformance;
  }
  
  public String V() {
    return this.tipoFamilia;
  }
  
  public String W() {
    return this.dataCota;
  }
  
  public String X() {
    return this.saldoBruto;
  }
  
  public String Y() {
    return this.valorDisponivelRegaste;
  }
  
  public String Z() {
    return this.agencia;
  }
  
  public int a(jdx paramjdx) {
    try {
      if (Integer.valueOf(this.contaFundo).intValue() < Integer.valueOf(paramjdx.c()).intValue())
        return -1; 
      int i = Integer.valueOf(this.contaFundo).intValue();
      int j = Integer.valueOf(paramjdx.c()).intValue();
      if (i > j)
        return 1; 
    } catch (Exception exception) {}
    return 0;
  }
  
  public jdx a() {
    return (jdx)super.clone();
  }
  
  public void a(String paramString) {
    this.labelAplicacaoMinimaAdicional = paramString;
  }
  
  public void a(jdk paramjdk) {
    this.botaoFundoEnumSelected = paramjdk;
  }
  
  public void a(jdu paramjdu) {
    this.contaFundoAdapter = paramjdu;
  }
  
  public void a(jeb paramjeb) {
    this.legendaCotasAplicacao = paramjeb;
  }
  
  public void a(jec paramjec) {
    this.legendaCotasFechamento = paramjec;
  }
  
  public void a(jed paramjed) {
    this.legendaCotasResgate = paramjed;
  }
  
  public void a(jee paramjee) {
    this.legendaCreditoEmConta = paramjee;
  }
  
  public void a(jef paramjef) {
    this.legendaRentabilidade12 = paramjef;
  }
  
  public void a(jeg paramjeg) {
    this.legendaTaxaAdm = paramjeg;
  }
  
  public void a(jeh paramjeh) {
    this.legendaTaxaPerformance = paramjeh;
  }
  
  public void a(jei paramjei) {
    this.legendaUltimoMes = paramjei;
  }
  
  public void a(boolean paramBoolean) {
    this.isDesenquadramento = paramBoolean;
  }
  
  public String aa() {
    return this.descricaoCotaResgate;
  }
  
  public String ab() {
    return this.descricaoCreditoEmConta;
  }
  
  public String ac() {
    return this.descricaoCotaAplicacao;
  }
  
  public String b() {
    return this.labelAplicacaoMinimaAdicional;
  }
  
  public void b(String paramString) {
    this.contaFundo = paramString;
  }
  
  public void b(boolean paramBoolean) {
    this.flagAgendamento = paramBoolean;
  }
  
  public String c() {
    return this.contaFundo;
  }
  
  public void c(String paramString) {
    this.valorMinimoResgate = paramString;
  }
  
  public void c(boolean paramBoolean) {
    this.flagResgatar = paramBoolean;
  }
  
  public String d() {
    return this.valorMinimoResgate;
  }
  
  public void d(String paramString) {
    this.valorMaximoResgate = paramString;
  }
  
  public void d(boolean paramBoolean) {
    this.flagAplicar = paramBoolean;
  }
  
  public String e() {
    return this.valorMaximoResgate;
  }
  
  public void e(String paramString) {
    this.labelTransacao = paramString;
  }
  
  public void e(boolean paramBoolean) {
    this.flagCancelar = paramBoolean;
  }
  
  public String f() {
    return this.labelTransacao;
  }
  
  public void f(String paramString) {
    this.risco = paramString;
  }
  
  public void f(boolean paramBoolean) {
    this.flagReaplicar = paramBoolean;
  }
  
  public jdu g() {
    return this.contaFundoAdapter;
  }
  
  public void g(String paramString) {
    this.codigoContaCorrente = paramString;
  }
  
  public void g(boolean paramBoolean) {
    this.flagExtrato = paramBoolean;
  }
  
  public String h() {
    return this.risco;
  }
  
  public void h(String paramString) {
    this.valorAplicar = paramString;
  }
  
  public String i() {
    return this.codigoContaCorrente;
  }
  
  public void i(String paramString) {
    this.dataAplicar = paramString;
  }
  
  public void j(String paramString) {
    this.contaSelecionada = paramString;
  }
  
  public boolean j() {
    return this.flagAgendamento;
  }
  
  public void k(String paramString) {
    this.aplicacaoAdicional = paramString;
  }
  
  public boolean k() {
    return this.isDesenquadramento;
  }
  
  public String l() {
    return this.valorAplicar;
  }
  
  public void l(String paramString) {
    this.aplicacaoMinima = paramString;
  }
  
  public String m() {
    return this.dataAplicar;
  }
  
  public void m(String paramString) {
    this.codFundoLamina = paramString;
  }
  
  public String n() {
    return this.contaSelecionada;
  }
  
  public void n(String paramString) {
    this.codigoCor = paramString;
  }
  
  public void o(String paramString) {
    this.codigoFundo = paramString;
  }
  
  public boolean o() {
    return this.flagResgatar;
  }
  
  public void p(String paramString) {
    this.cotaFechamento = paramString;
  }
  
  public boolean p() {
    return this.flagAplicar;
  }
  
  public void q(String paramString) {
    this.flagIOF = paramString;
  }
  
  public boolean q() {
    return this.flagCancelar;
  }
  
  public void r(String paramString) {
    this.flagIR = paramString;
  }
  
  public boolean r() {
    return this.flagReaplicar;
  }
  
  public void s(String paramString) {
    this.horarioLimite = paramString;
  }
  
  public boolean s() {
    return this.flagExtrato;
  }
  
  public jdk t() {
    return this.botaoFundoEnumSelected;
  }
  
  public void t(String paramString) {
    this.nomeFamilia = paramString;
  }
  
  public String u() {
    return this.aplicacaoAdicional;
  }
  
  public void u(String paramString) {
    this.nomeReduzidoIb = paramString;
  }
  
  public String v() {
    return this.aplicacaoMinima;
  }
  
  public void v(String paramString) {
    this.rentabilidade12 = paramString;
  }
  
  public String w() {
    return this.codFundoLamina;
  }
  
  public void w(String paramString) {
    this.rentabilidade24 = paramString;
  }
  
  public String x() {
    return this.codigoCor;
  }
  
  public void x(String paramString) {
    this.rentabilidade36 = paramString;
  }
  
  public String y() {
    return this.codigoFundo;
  }
  
  public void y(String paramString) {
    this.rentabilidadeAno = paramString;
  }
  
  public String z() {
    return this.cotaFechamento;
  }
  
  public void z(String paramString) {
    this.rentabilidadeUltimoMes = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jdx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */