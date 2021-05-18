import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class iow extends gnb {
  @Element(required = false)
  private String aaToken;
  
  @Element(required = false)
  private String agenciaPreferencial;
  
  @Element(required = false)
  private String apresentarMenuCambio;
  
  @Element(required = false)
  private String chavePublicaServer;
  
  @Element(required = false)
  private String contaPreferencial;
  
  @Element(required = false)
  private String correcaoContaPreferencial;
  
  @Element(required = false)
  private String csoDesativado;
  
  @Element(required = false)
  private iph dadosHome;
  
  @Element(required = false)
  private mwx idCso;
  
  @Element(required = false)
  private String msgErroSegmento;
  
  @Element(required = false)
  private String perfil;
  
  @Element(required = false)
  private String segmentoPrimario;
  
  @Element(required = false)
  private String segmentoSecundario;
  
  @Element(required = false)
  private String tokenRolante;
  
  @Element(required = false)
  private mwy validacaoTransacional;
  
  public String a() {
    return this.apresentarMenuCambio;
  }
  
  public void a(iph paramiph) {
    this.dadosHome = paramiph;
  }
  
  public void a(String paramString) {
    this.apresentarMenuCambio = paramString;
  }
  
  public void a(mwx parammwx) {
    this.idCso = parammwx;
  }
  
  public void a(mwy parammwy) {
    this.validacaoTransacional = parammwy;
  }
  
  public String b() {
    return this.agenciaPreferencial;
  }
  
  public void b(String paramString) {
    this.agenciaPreferencial = paramString;
  }
  
  public String c() {
    return this.contaPreferencial;
  }
  
  public void c(String paramString) {
    this.contaPreferencial = paramString;
  }
  
  public mwx d() {
    return this.idCso;
  }
  
  public void d(String paramString) {
    this.perfil = paramString;
  }
  
  public iph e() {
    return this.dadosHome;
  }
  
  public void e(String paramString) {
    this.segmentoPrimario = paramString;
  }
  
  public String f() {
    return this.perfil;
  }
  
  public void f(String paramString) {
    this.segmentoSecundario = paramString;
  }
  
  public String g() {
    return this.segmentoPrimario;
  }
  
  public void g(String paramString) {
    this.msgErroSegmento = paramString;
  }
  
  public String h() {
    return this.segmentoSecundario;
  }
  
  public void h(String paramString) {
    this.csoDesativado = paramString;
  }
  
  public String i() {
    return this.msgErroSegmento;
  }
  
  public void i(String paramString) {
    this.correcaoContaPreferencial = paramString;
  }
  
  public mwy j() {
    return this.validacaoTransacional;
  }
  
  public String k() {
    return this.csoDesativado;
  }
  
  public String l() {
    return this.correcaoContaPreferencial;
  }
  
  public String m() {
    return this.tokenRolante;
  }
  
  public String n() {
    return this.chavePublicaServer;
  }
  
  public String o() {
    return this.aaToken;
  }
  
  public String toString() {
    return "AutenticarUsuarioModel{agenciaPreferencial='" + this.agenciaPreferencial + '\'' + ", contaPreferencial='" + this.contaPreferencial + '\'' + ", idCso=" + this.idCso + ", dadosHome=" + this.dadosHome + ", perfil='" + this.perfil + '\'' + ", segmentoPrimario='" + this.segmentoPrimario + '\'' + ", segmentoSecundario='" + this.segmentoSecundario + '\'' + ", msgErroSegmento='" + this.msgErroSegmento + '\'' + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\iow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */