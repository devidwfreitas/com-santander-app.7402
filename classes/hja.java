import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "cet13")
public class hja implements Serializable {
  @Element(required = false)
  private String cetAnual;
  
  @Element(required = false)
  private String cetMensal;
  
  @Element(required = false)
  private String dataHora;
  
  @Element(required = false)
  private String dataPrimeiroVencimento;
  
  @Element(required = false)
  private String dataUltimoVencimento;
  
  @Element(required = false)
  private String descricaoTaxa;
  
  @Element(required = false)
  private String percentualContratacao;
  
  @Element(required = false)
  private String percentualIOF;
  
  @Element(required = false)
  private String percentualLiberado;
  
  @Element(required = false)
  private String quantidadeParcelas;
  
  @Element(required = false)
  private String taxaJurosAnual;
  
  @Element(required = false)
  private String taxaJurosMensal;
  
  @Element(required = false)
  private String tipoTaxa;
  
  @Element(required = false)
  private String valorContratacao;
  
  @Element(required = false)
  private String valorIOF;
  
  @Element(required = false)
  private String valorLiberado;
  
  @Element(required = false)
  private String valorParcelas;
  
  public String a() {
    return this.cetAnual;
  }
  
  public void a(String paramString) {
    this.cetAnual = paramString;
  }
  
  public String b() {
    return this.cetMensal;
  }
  
  public void b(String paramString) {
    this.cetMensal = paramString;
  }
  
  public String c() {
    return this.descricaoTaxa;
  }
  
  public void c(String paramString) {
    this.descricaoTaxa = paramString;
  }
  
  public String d() {
    return this.taxaJurosAnual;
  }
  
  public void d(String paramString) {
    this.taxaJurosAnual = paramString;
  }
  
  public String e() {
    return this.taxaJurosMensal;
  }
  
  public void e(String paramString) {
    this.taxaJurosMensal = paramString;
  }
  
  public String f() {
    return this.tipoTaxa;
  }
  
  public void f(String paramString) {
    this.tipoTaxa = paramString;
  }
  
  public String g() {
    return this.dataHora;
  }
  
  public void g(String paramString) {
    this.dataHora = paramString;
  }
  
  public String h() {
    return this.dataPrimeiroVencimento;
  }
  
  public void h(String paramString) {
    this.dataPrimeiroVencimento = paramString;
  }
  
  public String i() {
    return this.dataUltimoVencimento;
  }
  
  public void i(String paramString) {
    this.dataUltimoVencimento = paramString;
  }
  
  public String j() {
    return this.percentualContratacao;
  }
  
  public void j(String paramString) {
    this.percentualContratacao = paramString;
  }
  
  public String k() {
    return this.percentualIOF;
  }
  
  public void k(String paramString) {
    this.percentualIOF = paramString;
  }
  
  public String l() {
    return this.percentualLiberado;
  }
  
  public void l(String paramString) {
    this.percentualLiberado = paramString;
  }
  
  public String m() {
    return this.quantidadeParcelas;
  }
  
  public void m(String paramString) {
    this.quantidadeParcelas = paramString;
  }
  
  public String n() {
    return this.valorContratacao;
  }
  
  public void n(String paramString) {
    this.valorContratacao = paramString;
  }
  
  public String o() {
    return this.valorIOF;
  }
  
  public void o(String paramString) {
    this.valorIOF = paramString;
  }
  
  public String p() {
    return this.valorLiberado;
  }
  
  public void p(String paramString) {
    this.valorLiberado = paramString;
  }
  
  public String q() {
    return this.valorParcelas;
  }
  
  public void q(String paramString) {
    this.valorParcelas = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hja.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */