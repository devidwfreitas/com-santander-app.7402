import java.io.Serializable;
import org.simpleframework.xml.Element;

public class hzc implements Serializable {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String canalOCorrencia;
  
  @Element(required = false)
  private String classificacaoEmpresa;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String cpfCnpj;
  
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String identificadorProduto;
  
  @Element(required = false)
  private String infoContato1;
  
  @Element(required = false)
  private String infoContato2;
  
  @Element(required = false)
  private String motivo;
  
  @Element(required = false)
  private String nomeAssunto;
  
  @Element(required = false)
  private String nomeCliente;
  
  @Element(required = false)
  private String nomeMotivo;
  
  @Element(required = false)
  private String numeroCartao;
  
  @Element(required = false)
  private String processo;
  
  @Element(required = false)
  private String produtoServico;
  
  @Element(required = false)
  private String sintoma;
  
  @Element(required = false)
  private String tipoCaso;
  
  public String a() {
    return this.infoContato1;
  }
  
  public void a(String paramString) {
    this.infoContato1 = paramString;
  }
  
  public String b() {
    return this.infoContato2;
  }
  
  public void b(String paramString) {
    this.infoContato2 = paramString;
  }
  
  public String c() {
    return this.cpfCnpj;
  }
  
  public void c(String paramString) {
    this.cpfCnpj = paramString;
  }
  
  public String d() {
    return this.nomeCliente;
  }
  
  public void d(String paramString) {
    this.nomeCliente = paramString;
  }
  
  public String e() {
    return this.nomeMotivo;
  }
  
  public void e(String paramString) {
    this.nomeMotivo = paramString;
  }
  
  public String f() {
    return this.descricao;
  }
  
  public void f(String paramString) {
    this.descricao = paramString;
  }
  
  public String g() {
    return this.nomeAssunto;
  }
  
  public void g(String paramString) {
    this.nomeAssunto = paramString;
  }
  
  public String h() {
    return this.motivo;
  }
  
  public void h(String paramString) {
    this.motivo = paramString;
  }
  
  public String i() {
    return this.tipoCaso;
  }
  
  public void i(String paramString) {
    this.tipoCaso = paramString;
  }
  
  public String j() {
    return this.classificacaoEmpresa;
  }
  
  public void j(String paramString) {
    this.classificacaoEmpresa = paramString;
  }
  
  public String k() {
    return this.identificadorProduto;
  }
  
  public void k(String paramString) {
    this.identificadorProduto = paramString;
  }
  
  public String l() {
    return this.produtoServico;
  }
  
  public void l(String paramString) {
    this.produtoServico = paramString;
  }
  
  public String m() {
    return this.canalOCorrencia;
  }
  
  public void m(String paramString) {
    this.canalOCorrencia = paramString;
  }
  
  public String n() {
    return this.sintoma;
  }
  
  public void n(String paramString) {
    this.sintoma = paramString;
  }
  
  public String o() {
    return this.processo;
  }
  
  public void o(String paramString) {
    this.processo = paramString;
  }
  
  public String p() {
    return this.conta;
  }
  
  public void p(String paramString) {
    this.conta = paramString;
  }
  
  public String q() {
    return this.numeroCartao;
  }
  
  public void q(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String r() {
    return this.agencia;
  }
  
  public void r(String paramString) {
    this.agencia = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */