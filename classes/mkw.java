import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "entrada")
public class mkw extends goe {
  private String a;
  
  @Element(required = false)
  private String agenciaCredito;
  
  @Element(required = false)
  private String agenciaOrigem;
  
  private boolean b;
  
  @Element(required = false)
  private String bancoCredito;
  
  private String c;
  
  @Element(required = false)
  private String contaCredito;
  
  @Element(required = false)
  private String contaOrigem;
  
  @Element(required = false)
  private String cpfCnpj1;
  
  private boolean d;
  
  private String e;
  
  @Element(required = false)
  private String indicadorContaConjunta;
  
  @Element(required = false)
  private String nomeTit1;
  
  @Element(required = false)
  private String tipoConta;
  
  public String a() {
    return this.agenciaOrigem;
  }
  
  public void a(String paramString) {
    this.agenciaOrigem = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.b = paramBoolean;
  }
  
  public String b() {
    return this.contaOrigem;
  }
  
  public void b(String paramString) {
    this.contaOrigem = paramString;
  }
  
  public void b(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public String c() {
    return this.bancoCredito;
  }
  
  public void c(String paramString) {
    this.bancoCredito = paramString;
  }
  
  public String d() {
    return this.agenciaCredito;
  }
  
  public void d(String paramString) {
    this.agenciaCredito = paramString;
  }
  
  public String e() {
    return this.contaCredito;
  }
  
  public void e(String paramString) {
    this.contaCredito = paramString;
  }
  
  public String f() {
    return this.cpfCnpj1;
  }
  
  public void f(String paramString) {
    this.cpfCnpj1 = paramString;
  }
  
  public String g() {
    return this.tipoConta;
  }
  
  public void g(String paramString) {
    this.tipoConta = paramString;
  }
  
  public String h() {
    return this.nomeTit1;
  }
  
  public void h(String paramString) {
    this.nomeTit1 = paramString;
  }
  
  public String i() {
    return this.indicadorContaConjunta;
  }
  
  public void i(String paramString) {
    this.indicadorContaConjunta = paramString;
  }
  
  public String j() {
    return this.a;
  }
  
  public void j(String paramString) {
    this.a = paramString;
  }
  
  public void k(String paramString) {
    this.c = paramString;
  }
  
  public boolean k() {
    return this.b;
  }
  
  public String l() {
    return this.c;
  }
  
  public void l(String paramString) {
    this.e = paramString;
  }
  
  public boolean m() {
    return this.d;
  }
  
  public String n() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mkw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */