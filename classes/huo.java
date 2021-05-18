import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class huo extends gnb {
  @Element(required = false)
  public String codigoAutenticacao;
  
  @Element(required = false)
  public String dataTransacao;
  
  @Element(required = false)
  public String dataVencimentoPrimeiraParcela;
  
  @Element(required = false)
  public String horaTransacao;
  
  @Element(required = false)
  public String numeroComprovate;
  
  @Element(required = false)
  public String quantidadeParcelas;
  
  @Element(required = false)
  public String taxaCETAno;
  
  @Element(required = false)
  public String taxaCETMes;
  
  @Element(required = false)
  public String taxaJurosAnual;
  
  @Element(required = false)
  public String taxaJurosMensal;
  
  @Element(required = false)
  public String valorCoberturaComSeguro;
  
  @Element(required = false)
  public String valorIOF;
  
  @Element(required = false)
  public String valorParcela;
  
  public String a() {
    return this.codigoAutenticacao;
  }
  
  public void a(String paramString) {
    this.codigoAutenticacao = paramString;
  }
  
  public String b() {
    return this.dataTransacao;
  }
  
  public void b(String paramString) {
    this.dataTransacao = paramString;
  }
  
  public String c() {
    return this.horaTransacao;
  }
  
  public void c(String paramString) {
    this.horaTransacao = paramString;
  }
  
  public String d() {
    return this.dataVencimentoPrimeiraParcela;
  }
  
  public void d(String paramString) {
    this.dataVencimentoPrimeiraParcela = paramString;
  }
  
  public String e() {
    return this.numeroComprovate;
  }
  
  public void e(String paramString) {
    this.numeroComprovate = paramString;
  }
  
  public String f() {
    return this.quantidadeParcelas;
  }
  
  public void f(String paramString) {
    this.quantidadeParcelas = paramString;
  }
  
  public String g() {
    return this.taxaCETAno;
  }
  
  public void g(String paramString) {
    this.taxaCETAno = paramString;
  }
  
  public String getMensagemErro() {
    return (getFaultstring() != null) ? getFaultstring() : ((super.getMensagemErro() != null) ? super.getMensagemErro() : "");
  }
  
  public String h() {
    return this.taxaCETMes;
  }
  
  public void h(String paramString) {
    this.taxaCETMes = paramString;
  }
  
  public String i() {
    return this.taxaJurosMensal;
  }
  
  public void i(String paramString) {
    this.taxaJurosMensal = paramString;
  }
  
  public String j() {
    return this.taxaJurosAnual;
  }
  
  public void j(String paramString) {
    this.taxaJurosAnual = paramString;
  }
  
  public String k() {
    return this.valorCoberturaComSeguro;
  }
  
  public void k(String paramString) {
    this.valorCoberturaComSeguro = paramString;
  }
  
  public String l() {
    return this.valorIOF;
  }
  
  public void l(String paramString) {
    this.valorIOF = paramString;
  }
  
  public String m() {
    return this.valorParcela;
  }
  
  public void m(String paramString) {
    this.valorParcela = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\huo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */