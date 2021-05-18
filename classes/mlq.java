import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class mlq extends goe {
  @Element(required = false)
  private String agenciaDestino;
  
  @Element(required = false)
  private String agenciaOrigem;
  
  @Element(required = false)
  private boolean agendamento;
  
  @Element(required = false)
  private String autorizado;
  
  @Element(required = false)
  private String bancoDestino;
  
  @Element(required = false)
  private String codNSU;
  
  @Element(required = false)
  private String codigoMensagemSPB;
  
  @Element(required = false)
  private String contaDestino;
  
  @Element(required = false)
  private String contaOrigem;
  
  @Element(required = false)
  private String cpfFavorecido;
  
  @Element(required = false)
  private String dataMovimento;
  
  @Element(required = false)
  private String dtAgendamento;
  
  @Element(required = false)
  private String especieConta;
  
  @Element(required = false)
  private String historico;
  
  @Element(required = false)
  private String indicadorMesmoTitular;
  
  @Element(required = false)
  private String nomeFavorecido;
  
  @Element(required = false)
  private String nomeOrigem;
  
  @Element(required = false)
  private String numeroDocumento;
  
  @Element(required = false)
  private String periodicidade;
  
  @Element(required = false)
  private String quantidadeProgramacoes;
  
  @Element(required = false)
  private String tipoContaDe;
  
  @Element(required = false)
  private String tipoContaPara;
  
  @Element(required = false)
  private String tipoTransferencia;
  
  @Element(required = false)
  private boolean transferenciaProgramada;
  
  @Element(required = false)
  private String valor;
  
  public String a() {
    return this.agenciaDestino;
  }
  
  public void a(String paramString) {
    this.agenciaDestino = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.agendamento = paramBoolean;
  }
  
  public String b() {
    return this.agenciaOrigem;
  }
  
  public void b(String paramString) {
    this.agenciaOrigem = paramString;
  }
  
  public void b(boolean paramBoolean) {
    this.transferenciaProgramada = paramBoolean;
  }
  
  public void c(String paramString) {
    this.bancoDestino = paramString;
  }
  
  public boolean c() {
    return this.agendamento;
  }
  
  public String d() {
    return this.bancoDestino;
  }
  
  public void d(String paramString) {
    this.codNSU = paramString;
  }
  
  public String e() {
    return this.codNSU;
  }
  
  public void e(String paramString) {
    this.contaDestino = paramString;
  }
  
  public String f() {
    return this.contaDestino;
  }
  
  public void f(String paramString) {
    this.contaOrigem = paramString;
  }
  
  public String g() {
    return this.contaOrigem;
  }
  
  public void g(String paramString) {
    this.cpfFavorecido = paramString;
  }
  
  public String h() {
    return this.cpfFavorecido;
  }
  
  public void h(String paramString) {
    this.dtAgendamento = paramString;
  }
  
  public String i() {
    return this.dtAgendamento;
  }
  
  public void i(String paramString) {
    this.especieConta = paramString;
  }
  
  public String j() {
    return this.especieConta;
  }
  
  public void j(String paramString) {
    this.historico = paramString;
  }
  
  public String k() {
    return this.historico;
  }
  
  public void k(String paramString) {
    this.nomeFavorecido = paramString;
  }
  
  public String l() {
    return this.nomeFavorecido;
  }
  
  public void l(String paramString) {
    this.numeroDocumento = paramString;
  }
  
  public String m() {
    return this.numeroDocumento;
  }
  
  public void m(String paramString) {
    this.periodicidade = paramString;
  }
  
  public String n() {
    return this.periodicidade;
  }
  
  public void n(String paramString) {
    this.quantidadeProgramacoes = paramString;
  }
  
  public String o() {
    return this.quantidadeProgramacoes;
  }
  
  public void o(String paramString) {
    this.tipoContaDe = paramString;
  }
  
  public String p() {
    return this.tipoContaDe;
  }
  
  public void p(String paramString) {
    this.tipoContaPara = paramString;
  }
  
  public String q() {
    return this.tipoContaPara;
  }
  
  public void q(String paramString) {
    this.tipoTransferencia = paramString;
  }
  
  public String r() {
    return this.tipoTransferencia;
  }
  
  public void r(String paramString) {
    this.valor = paramString;
  }
  
  public void s(String paramString) {
    this.dataMovimento = paramString;
  }
  
  public boolean s() {
    return this.transferenciaProgramada;
  }
  
  public String t() {
    return this.valor;
  }
  
  public void t(String paramString) {
    this.nomeOrigem = paramString;
  }
  
  public String u() {
    return this.dataMovimento;
  }
  
  public void u(String paramString) {
    this.indicadorMesmoTitular = paramString;
  }
  
  public String v() {
    return this.nomeOrigem;
  }
  
  public void v(String paramString) {
    this.autorizado = paramString;
  }
  
  public String w() {
    return this.indicadorMesmoTitular;
  }
  
  public void w(String paramString) {
    this.codigoMensagemSPB = paramString;
  }
  
  public String x() {
    return this.autorizado;
  }
  
  public String y() {
    return this.codigoMensagemSPB;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mlq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */