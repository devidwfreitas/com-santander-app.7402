import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "motivo")
public class hze implements gkz, Serializable {
  @Element(required = false)
  private String canalOcorrencia;
  
  @Element(required = false)
  private String classificacaoEmpresa;
  
  @Element(required = false)
  private String codigoMotivo;
  
  @Element(required = false)
  private String descricaoSintoma;
  
  @Element(required = false)
  private String familia;
  
  @Element(required = false)
  private String nomeExibicao;
  
  @Element(required = false)
  private String ordem;
  
  @Element(required = false)
  private String processo;
  
  @Element(required = false)
  private String produtoServico;
  
  @Element(required = false)
  private String sintoma;
  
  @Element(required = false)
  private String tipoManifestacao;
  
  public String Y() {
    return toString();
  }
  
  public String a() {
    return this.descricaoSintoma;
  }
  
  public void a(String paramString) {
    this.descricaoSintoma = paramString;
  }
  
  public String b() {
    return this.canalOcorrencia;
  }
  
  public void b(String paramString) {
    this.canalOcorrencia = paramString;
  }
  
  public String c() {
    return this.classificacaoEmpresa;
  }
  
  public void c(String paramString) {
    this.classificacaoEmpresa = paramString;
  }
  
  public String d() {
    return this.familia;
  }
  
  public void d(String paramString) {
    this.familia = paramString;
  }
  
  public String e() {
    return this.codigoMotivo;
  }
  
  public void e(String paramString) {
    this.codigoMotivo = paramString;
  }
  
  public String f() {
    return this.nomeExibicao;
  }
  
  public void f(String paramString) {
    this.nomeExibicao = paramString;
  }
  
  public String g() {
    return this.ordem;
  }
  
  public void g(String paramString) {
    this.ordem = paramString;
  }
  
  public String h() {
    return this.processo;
  }
  
  public void h(String paramString) {
    this.processo = paramString;
  }
  
  public String i() {
    return this.sintoma;
  }
  
  public void i(String paramString) {
    this.sintoma = paramString;
  }
  
  public String j() {
    return this.produtoServico;
  }
  
  public void j(String paramString) {
    this.produtoServico = paramString;
  }
  
  public String k() {
    return this.tipoManifestacao;
  }
  
  public void k(String paramString) {
    this.tipoManifestacao = paramString;
  }
  
  public String toString() {
    return this.nomeExibicao;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hze.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */