import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "cartao")
public class ioz {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String bandeira;
  
  @Element(required = false)
  private String codigoPlastico;
  
  @Element(required = false)
  private String codigoProduto;
  
  @Element(required = false)
  private String codigoSubproduto;
  
  @Element(required = false)
  private String descSituacao;
  
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String identificadorTitularidade;
  
  @Element(required = false)
  private String imagem;
  
  @Element(required = false)
  private String indCartaoInternac;
  
  @Element(required = false)
  private String indViagemVigente;
  
  @Element(required = false)
  private String indicaCpf;
  
  @Element(required = false)
  private String indice;
  
  @Element(required = false)
  private String limiteDisponivel;
  
  @Element(required = false)
  private String nomeTitular;
  
  @Element(required = false)
  private String numContratoCartao;
  
  @Element(required = false)
  private String numeroCartao;
  
  @Element(required = false)
  private String numeroFinal;
  
  @Element(required = false)
  private String percentualLimiteDisponivel;
  
  @Element(required = false)
  private String tipoCartao;
  
  public String a() {
    return this.agencia;
  }
  
  public void a(String paramString) {
    this.agencia = paramString;
  }
  
  public String b() {
    return this.codigoPlastico;
  }
  
  public void b(String paramString) {
    this.codigoPlastico = paramString;
  }
  
  public String c() {
    return this.codigoProduto;
  }
  
  public void c(String paramString) {
    this.codigoProduto = paramString;
  }
  
  public String d() {
    return this.codigoSubproduto;
  }
  
  public void d(String paramString) {
    this.codigoSubproduto = paramString;
  }
  
  public String e() {
    return this.descricao;
  }
  
  public void e(String paramString) {
    this.descricao = paramString;
  }
  
  public String f() {
    return this.identificadorTitularidade;
  }
  
  public void f(String paramString) {
    this.identificadorTitularidade = paramString;
  }
  
  public String g() {
    return this.indCartaoInternac;
  }
  
  public void g(String paramString) {
    this.indCartaoInternac = paramString;
  }
  
  public String h() {
    return this.indViagemVigente;
  }
  
  public void h(String paramString) {
    this.indViagemVigente = paramString;
  }
  
  public String i() {
    return this.limiteDisponivel;
  }
  
  public void i(String paramString) {
    this.limiteDisponivel = paramString;
  }
  
  public String j() {
    return this.numContratoCartao;
  }
  
  public void j(String paramString) {
    this.numContratoCartao = paramString;
  }
  
  public String k() {
    return this.numeroCartao;
  }
  
  public void k(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String l() {
    return this.numeroFinal;
  }
  
  public void l(String paramString) {
    this.numeroFinal = paramString;
  }
  
  public String m() {
    return this.percentualLimiteDisponivel;
  }
  
  public void m(String paramString) {
    this.percentualLimiteDisponivel = paramString;
  }
  
  public String n() {
    return this.bandeira;
  }
  
  public void n(String paramString) {
    this.bandeira = paramString;
  }
  
  public String o() {
    return this.descSituacao;
  }
  
  public void o(String paramString) {
    this.descSituacao = paramString;
  }
  
  public String p() {
    return this.indicaCpf;
  }
  
  public void p(String paramString) {
    this.indicaCpf = paramString;
  }
  
  public String q() {
    return this.nomeTitular;
  }
  
  public void q(String paramString) {
    this.nomeTitular = paramString;
  }
  
  public String r() {
    return this.tipoCartao;
  }
  
  public void r(String paramString) {
    this.tipoCartao = paramString;
  }
  
  public String s() {
    return this.imagem;
  }
  
  public void s(String paramString) {
    this.imagem = paramString;
  }
  
  public String t() {
    return this.indice;
  }
  
  public void t(String paramString) {
    this.indice = paramString;
  }
  
  public String toString() {
    return "CartaoModel [agencia=" + this.agencia + ", codigoPlastico=" + this.codigoPlastico + ", codigoProduto=" + this.codigoProduto + ", codigoSubproduto=" + this.codigoSubproduto + ", descricao=" + this.descricao + ", identificadorTitularidade=" + this.identificadorTitularidade + ", indCartaoInternac=" + this.indCartaoInternac + ", indViagemVigente=" + this.indViagemVigente + ", limiteDisponivel=" + this.limiteDisponivel + ", numContratoCartao=" + this.numContratoCartao + ", numeroCartao=" + this.numeroCartao + ", numeroFinal=" + this.numeroFinal + ", percentualLimiteDisponivel=" + this.percentualLimiteDisponivel + ", bandeira=" + this.bandeira + ", descSituacao=" + this.descSituacao + ", indicaCpf=" + this.indicaCpf + ", nomeTitular=" + this.nomeTitular + ", tipoCartao=" + this.tipoCartao + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ioz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */