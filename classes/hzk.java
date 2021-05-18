import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "request")
public class hzk extends goe implements Serializable {
  @Element(name = "anexo1", required = false)
  private hyy anexo1;
  
  @Element(name = "anexo2", required = false)
  private hyy anexo2;
  
  @Element(name = "anexo3", required = false)
  private hyy anexo3;
  
  @Element(required = false)
  private String canalOCorrencia;
  
  @Element(required = false)
  private String classificacaoEmpresa;
  
  @Element(required = false)
  private String codigoMotivo;
  
  @Element(required = false)
  private String cpfCnpj;
  
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String descricaoObservacao;
  
  @Element(required = false)
  private String identificadorProduto;
  
  @Element(required = false)
  private String infoContato1;
  
  @Element(required = false)
  private String infoContato2;
  
  @Element(required = false)
  private String nomeAssunto;
  
  @Element(required = false)
  private String nomeCliente;
  
  @Element(required = false)
  private String nomeMotivo;
  
  @Element(required = false)
  private String numeroCartao;
  
  @Element(required = false)
  private String produtoServico;
  
  @Element(required = false)
  private String sintoma;
  
  @Element(required = false)
  private String tipoManifestacao;
  
  @Element(required = false)
  private String tituloObservacao;
  
  public String a() {
    return this.numeroCartao;
  }
  
  public void a(hyy paramhyy) {
    this.anexo1 = paramhyy;
  }
  
  public void a(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String b() {
    return this.canalOCorrencia;
  }
  
  public void b(hyy paramhyy) {
    this.anexo2 = paramhyy;
  }
  
  public void b(String paramString) {
    this.canalOCorrencia = paramString;
  }
  
  public String c() {
    return this.nomeMotivo;
  }
  
  public void c(hyy paramhyy) {
    this.anexo3 = paramhyy;
  }
  
  public void c(String paramString) {
    this.nomeMotivo = paramString;
  }
  
  public String d() {
    return this.produtoServico;
  }
  
  public void d(String paramString) {
    this.produtoServico = paramString;
  }
  
  public String e() {
    return this.sintoma;
  }
  
  public void e(String paramString) {
    this.sintoma = paramString;
  }
  
  public String f() {
    return this.tipoManifestacao;
  }
  
  public void f(String paramString) {
    this.tipoManifestacao = paramString;
  }
  
  public hyy g() {
    return this.anexo1;
  }
  
  public void g(String paramString) {
    this.canalOCorrencia = paramString;
  }
  
  public hyy h() {
    return this.anexo2;
  }
  
  public void h(String paramString) {
    this.classificacaoEmpresa = paramString;
  }
  
  public hyy i() {
    return this.anexo3;
  }
  
  public void i(String paramString) {
    this.cpfCnpj = paramString;
  }
  
  public String j() {
    return this.canalOCorrencia;
  }
  
  public void j(String paramString) {
    this.descricao = paramString;
  }
  
  public String k() {
    return this.classificacaoEmpresa;
  }
  
  public void k(String paramString) {
    this.identificadorProduto = paramString;
  }
  
  public String l() {
    return this.cpfCnpj;
  }
  
  public void l(String paramString) {
    this.infoContato1 = paramString;
  }
  
  public String m() {
    return this.descricao;
  }
  
  public void m(String paramString) {
    this.infoContato2 = paramString;
  }
  
  public String n() {
    return this.identificadorProduto;
  }
  
  public void n(String paramString) {
    this.codigoMotivo = paramString;
  }
  
  public String o() {
    return this.infoContato1;
  }
  
  public void o(String paramString) {
    this.nomeCliente = paramString;
  }
  
  public String p() {
    return this.infoContato2;
  }
  
  public void p(String paramString) {
    this.nomeAssunto = paramString;
  }
  
  public String q() {
    return this.codigoMotivo;
  }
  
  public void q(String paramString) {
    this.descricaoObservacao = paramString;
  }
  
  public String r() {
    return this.nomeCliente;
  }
  
  public void r(String paramString) {
    this.tituloObservacao = paramString;
  }
  
  public String s() {
    return this.nomeAssunto;
  }
  
  public String t() {
    return this.descricaoObservacao;
  }
  
  public String u() {
    return this.tituloObservacao;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */