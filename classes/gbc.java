import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class gbc extends gnb implements Cloneable {
  @Element(required = false)
  private String codigoTaxaMoeda;
  
  @Element(required = false)
  private String tagBloqueio;
  
  @Element(required = false)
  private String valorCorrespondente;
  
  @Element(required = false)
  private String valorIR;
  
  @Element(required = false)
  private String valorIof;
  
  @Element(required = false)
  private String valorTarifaContrato;
  
  @Element(required = false)
  private String valorTaxaCambial;
  
  @Element(required = false)
  private String valorTotal;
  
  @Element(required = false)
  private String valorVET;
  
  public gbc() {}
  
  public gbc(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7) {
    this.valorIof = paramString1;
    this.valorIR = paramString2;
    this.valorTarifaContrato = paramString3;
    this.valorVET = paramString4;
    this.valorTotal = paramString5;
    this.valorCorrespondente = paramString6;
    this.valorTaxaCambial = paramString7;
  }
  
  public gbc a() {
    return (gbc)super.clone();
  }
  
  public void a(String paramString) {
    this.tagBloqueio = paramString;
  }
  
  public String b() {
    return this.tagBloqueio;
  }
  
  public void b(String paramString) {
    this.codigoTaxaMoeda = paramString;
  }
  
  public String c() {
    return this.codigoTaxaMoeda;
  }
  
  public void c(String paramString) {
    this.valorIof = paramString;
  }
  
  public String d() {
    return this.valorIof;
  }
  
  public void d(String paramString) {
    this.valorIR = paramString;
  }
  
  public String e() {
    return this.valorIR;
  }
  
  public void e(String paramString) {
    this.valorTarifaContrato = paramString;
  }
  
  public String f() {
    return this.valorTarifaContrato;
  }
  
  public void f(String paramString) {
    this.valorVET = paramString;
  }
  
  public String g() {
    return this.valorVET;
  }
  
  public void g(String paramString) {
    this.valorTotal = paramString;
  }
  
  public String h() {
    return this.valorTotal;
  }
  
  public void h(String paramString) {
    this.valorCorrespondente = paramString;
  }
  
  public String i() {
    return this.valorCorrespondente;
  }
  
  public void i(String paramString) {
    this.valorTaxaCambial = paramString;
  }
  
  public String j() {
    return this.valorTaxaCambial;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gbc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */