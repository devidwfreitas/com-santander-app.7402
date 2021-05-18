import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "programacoesRecarga")
public class kgm implements Serializable {
  private boolean a;
  
  @Element(required = false)
  private String agendamento = "";
  
  @Element(required = false)
  private String areaCelular = "";
  
  @Element(required = false)
  private String codigoCanalProgramacao = "";
  
  @Element(required = false)
  private String codigoConvenio = "";
  
  @Element(required = false)
  private String dataCadastroAgend = "";
  
  @Element(required = false)
  private String dataFinalProgramacao = "";
  
  @Element(required = false)
  private String dataInicioProgramacao = "";
  
  @Element(required = false)
  private String dataProximaParcela = "";
  
  @Element(required = false)
  private String diaCadastroProgramacao = "";
  
  @Element(required = false)
  private String excluirMantendoProximaRecarga = "";
  
  @Element(required = false)
  private String horaCadastroAgend = "";
  
  @Element(required = false)
  private String indicadorAdesaoEnvioSMS = "";
  
  @Element(required = false)
  private String numCelular = "";
  
  @Element(required = false)
  private String numProtocoloAgend = "";
  
  @Element(required = false)
  private String numeroContaCorrente = "";
  
  @Element(required = false)
  private String operadora = "";
  
  @Element(required = false)
  private String periodo = "";
  
  @Element(required = false)
  private String periodoIndeterminado = "";
  
  @Element(required = false)
  private String situacaoProgramacao = "";
  
  @Element(required = false)
  private String textoDescrProgRec = "";
  
  @Element(required = false)
  private String valorRecarga = "";
  
  public String a() {
    return this.agendamento;
  }
  
  public void a(String paramString) {
    this.agendamento = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.a = paramBoolean;
  }
  
  public String b() {
    return this.areaCelular;
  }
  
  public void b(String paramString) {
    this.areaCelular = paramString;
  }
  
  public String c() {
    return this.codigoCanalProgramacao;
  }
  
  public void c(String paramString) {
    this.codigoCanalProgramacao = paramString;
  }
  
  public String d() {
    return this.codigoConvenio;
  }
  
  public void d(String paramString) {
    this.codigoConvenio = paramString;
  }
  
  public String e() {
    return this.dataCadastroAgend;
  }
  
  public void e(String paramString) {
    this.dataCadastroAgend = paramString;
  }
  
  public String f() {
    return this.dataFinalProgramacao;
  }
  
  public void f(String paramString) {
    this.dataFinalProgramacao = paramString;
  }
  
  public String g() {
    return this.dataInicioProgramacao;
  }
  
  public void g(String paramString) {
    this.dataInicioProgramacao = paramString;
  }
  
  public String h() {
    return this.dataProximaParcela;
  }
  
  public void h(String paramString) {
    this.dataProximaParcela = paramString;
  }
  
  public String i() {
    return this.diaCadastroProgramacao;
  }
  
  public void i(String paramString) {
    this.diaCadastroProgramacao = paramString;
  }
  
  public String j() {
    return this.excluirMantendoProximaRecarga;
  }
  
  public void j(String paramString) {
    this.excluirMantendoProximaRecarga = paramString;
  }
  
  public String k() {
    return this.horaCadastroAgend;
  }
  
  public void k(String paramString) {
    this.horaCadastroAgend = paramString;
  }
  
  public String l() {
    return this.indicadorAdesaoEnvioSMS;
  }
  
  public void l(String paramString) {
    this.indicadorAdesaoEnvioSMS = paramString;
  }
  
  public String m() {
    return this.numCelular;
  }
  
  public void m(String paramString) {
    this.numCelular = paramString;
  }
  
  public String n() {
    return this.numProtocoloAgend;
  }
  
  public void n(String paramString) {
    this.numProtocoloAgend = paramString;
  }
  
  public String o() {
    return this.numeroContaCorrente;
  }
  
  public void o(String paramString) {
    this.numeroContaCorrente = paramString;
  }
  
  public String p() {
    return this.operadora;
  }
  
  public void p(String paramString) {
    this.operadora = paramString;
  }
  
  public String q() {
    return this.periodo;
  }
  
  public void q(String paramString) {
    this.periodo = paramString;
  }
  
  public String r() {
    return this.periodoIndeterminado;
  }
  
  public void r(String paramString) {
    this.periodoIndeterminado = paramString;
  }
  
  public String s() {
    return this.situacaoProgramacao;
  }
  
  public void s(String paramString) {
    this.situacaoProgramacao = paramString;
  }
  
  public String t() {
    return this.textoDescrProgRec;
  }
  
  public void t(String paramString) {
    this.textoDescrProgRec = paramString;
  }
  
  public String u() {
    return this.valorRecarga;
  }
  
  public void u(String paramString) {
    this.valorRecarga = paramString;
  }
  
  public boolean v() {
    return this.a;
  }
  
  public String w() {
    return (this.numCelular != null && this.numCelular.substring(0, 1).equals("0")) ? this.numCelular.substring(1, this.numCelular.length()) : this.numCelular;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kgm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */