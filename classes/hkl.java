import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "cetIR")
public class hkl implements Serializable {
  @Element(required = false)
  private String dataCalculo;
  
  @Element(required = false)
  private String descricaoTaxaJuros;
  
  @Element(required = false)
  private String horaCalculo;
  
  @Element(required = false)
  private String pctIofemprest;
  
  @Element(required = false)
  private String pctLiberadoemprest;
  
  @Element(required = false)
  private String pctTotaldevido;
  
  @Element(required = false)
  private String percentualCetano;
  
  @Element(required = false)
  private String percentualCetmes;
  
  @Element(required = false)
  private String taxaJurosano;
  
  @Element(required = false)
  private String taxaJurosmes;
  
  @Element(required = false)
  private String tipoTaxaJuros;
  
  @Element(required = false)
  private String valorIof;
  
  @Element(required = false)
  private String vlJurocalC30Dias;
  
  @Element(required = false)
  private String vlrLiberadoemprest;
  
  @Element(required = false)
  private String vlrTotaldevido;
  
  public String a() {
    return this.dataCalculo;
  }
  
  public void a(String paramString) {
    this.dataCalculo = paramString;
  }
  
  public String b() {
    return this.horaCalculo;
  }
  
  public void b(String paramString) {
    this.horaCalculo = paramString;
  }
  
  public String c() {
    return this.descricaoTaxaJuros;
  }
  
  public void c(String paramString) {
    this.descricaoTaxaJuros = paramString;
  }
  
  public String d() {
    return this.pctIofemprest;
  }
  
  public void d(String paramString) {
    this.pctIofemprest = paramString;
  }
  
  public String e() {
    return this.pctLiberadoemprest;
  }
  
  public void e(String paramString) {
    this.pctLiberadoemprest = paramString;
  }
  
  public String f() {
    return this.pctTotaldevido;
  }
  
  public void f(String paramString) {
    this.pctTotaldevido = paramString;
  }
  
  public String g() {
    return this.percentualCetano;
  }
  
  public void g(String paramString) {
    this.percentualCetano = paramString;
  }
  
  public String h() {
    return this.percentualCetmes;
  }
  
  public void h(String paramString) {
    this.percentualCetmes = paramString;
  }
  
  public String i() {
    return this.taxaJurosano;
  }
  
  public void i(String paramString) {
    this.taxaJurosano = paramString;
  }
  
  public String j() {
    return this.taxaJurosmes;
  }
  
  public void j(String paramString) {
    this.taxaJurosmes = paramString;
  }
  
  public String k() {
    return this.tipoTaxaJuros;
  }
  
  public void k(String paramString) {
    this.tipoTaxaJuros = paramString;
  }
  
  public String l() {
    return this.valorIof;
  }
  
  public void l(String paramString) {
    this.valorIof = paramString;
  }
  
  public String m() {
    return this.vlJurocalC30Dias;
  }
  
  public void m(String paramString) {
    this.vlJurocalC30Dias = paramString;
  }
  
  public String n() {
    return this.vlrLiberadoemprest;
  }
  
  public void n(String paramString) {
    this.vlrLiberadoemprest = paramString;
  }
  
  public String o() {
    return this.vlrTotaldevido;
  }
  
  public void o(String paramString) {
    this.vlrTotaldevido = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hkl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */