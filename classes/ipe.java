import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "emprestimoCancelavel")
public class ipe {
  @Element(required = false)
  private String codigoConta;
  
  @Element(required = false)
  private String codigoEvento;
  
  @Element(required = false)
  private String codigoNIO;
  
  @Element(required = false)
  private String codigoOficina;
  
  @Element(required = false)
  private String codigoProduto;
  
  @Element(required = false)
  private String codigoSubProduto;
  
  @Element(required = false)
  private String dataOperacao;
  
  @Element(required = false)
  private String descricaoCanal;
  
  @Element(required = false)
  private String descricaoMovimento;
  
  @Element(required = false)
  private String descricaoReduzida;
  
  @Element(required = false)
  private String quantidadeParcela;
  
  @Element(required = false)
  private String valorEstorno;
  
  public String a() {
    return this.codigoOficina;
  }
  
  public void a(String paramString) {
    this.codigoOficina = paramString;
  }
  
  public String b() {
    return this.codigoConta;
  }
  
  public void b(String paramString) {
    this.codigoConta = paramString;
  }
  
  public String c() {
    return this.descricaoReduzida;
  }
  
  public void c(String paramString) {
    this.descricaoReduzida = paramString;
  }
  
  public String d() {
    return this.quantidadeParcela;
  }
  
  public void d(String paramString) {
    this.quantidadeParcela = paramString;
  }
  
  public String e() {
    return this.codigoEvento;
  }
  
  public void e(String paramString) {
    this.codigoEvento = paramString;
  }
  
  public String f() {
    return this.codigoProduto;
  }
  
  public void f(String paramString) {
    this.codigoProduto = paramString;
  }
  
  public String g() {
    return this.codigoSubProduto;
  }
  
  public void g(String paramString) {
    this.codigoSubProduto = paramString;
  }
  
  public String h() {
    return this.dataOperacao;
  }
  
  public void h(String paramString) {
    this.dataOperacao = paramString;
  }
  
  public String i() {
    return this.codigoNIO;
  }
  
  public void i(String paramString) {
    this.codigoNIO = paramString;
  }
  
  public String j() {
    return this.descricaoCanal;
  }
  
  public void j(String paramString) {
    this.descricaoCanal = paramString;
  }
  
  public String k() {
    return this.descricaoMovimento;
  }
  
  public void k(String paramString) {
    this.descricaoMovimento = paramString;
  }
  
  public String l() {
    return this.valorEstorno;
  }
  
  public void l(String paramString) {
    this.valorEstorno = paramString;
  }
  
  public String toString() {
    return "EmprestimoCancelavel{codigoConta='" + this.codigoConta + '\'' + ", codigoEvento='" + this.codigoEvento + '\'' + ", codigoNIO='" + this.codigoNIO + '\'' + ", codigoOficina='" + this.codigoOficina + '\'' + ", codigoProduto='" + this.codigoProduto + '\'' + ", codigoSubProduto='" + this.codigoSubProduto + '\'' + ", dataOperacao='" + this.dataOperacao + '\'' + ", descricaoCanal='" + this.descricaoCanal + '\'' + ", descricaoMovimento='" + this.descricaoMovimento + '\'' + ", descricaoReduzida='" + this.descricaoReduzida + '\'' + ", quantidadeParcela='" + this.quantidadeParcela + '\'' + ", valorEstorno='" + this.valorEstorno + '\'' + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ipe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */