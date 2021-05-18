import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class iru extends goe {
  @Element(required = false)
  private boolean consultarAntecipacao13 = false;
  
  @Element(required = false)
  private boolean consultarAntecipacaoIR = false;
  
  @Element(required = false)
  private boolean consultarCartoes = false;
  
  @Element(required = false)
  private boolean consultarCartoesBloqueados = false;
  
  @Element(required = false)
  private boolean consultarContasCorrentes = false;
  
  @Element(required = false)
  private boolean consultarEmprestimos = false;
  
  @Element(required = false)
  private boolean consultarFundos = false;
  
  @Element(required = false)
  private boolean consultarPoupanca = false;
  
  @Element(required = false)
  private boolean consultarRendaFixa = false;
  
  @Element(required = false)
  private boolean consultarRenegociacao = false;
  
  @Element(required = false)
  private boolean consultarSeguros = false;
  
  public void a(boolean paramBoolean) {
    this.consultarAntecipacao13 = paramBoolean;
  }
  
  public boolean a() {
    return this.consultarAntecipacao13;
  }
  
  public void b(boolean paramBoolean) {
    this.consultarAntecipacaoIR = paramBoolean;
  }
  
  public boolean b() {
    return this.consultarAntecipacaoIR;
  }
  
  public void c(boolean paramBoolean) {
    this.consultarCartoes = paramBoolean;
  }
  
  public boolean c() {
    return this.consultarCartoes;
  }
  
  public void d(boolean paramBoolean) {
    this.consultarCartoesBloqueados = paramBoolean;
  }
  
  public boolean d() {
    return this.consultarCartoesBloqueados;
  }
  
  public void e(boolean paramBoolean) {
    this.consultarContasCorrentes = paramBoolean;
  }
  
  public boolean e() {
    return this.consultarContasCorrentes;
  }
  
  public void f(boolean paramBoolean) {
    this.consultarEmprestimos = paramBoolean;
  }
  
  public boolean f() {
    return this.consultarEmprestimos;
  }
  
  public void g(boolean paramBoolean) {
    this.consultarFundos = paramBoolean;
  }
  
  public boolean g() {
    return this.consultarFundos;
  }
  
  public void h(boolean paramBoolean) {
    this.consultarPoupanca = paramBoolean;
  }
  
  public boolean h() {
    return this.consultarPoupanca;
  }
  
  public void i(boolean paramBoolean) {
    this.consultarRendaFixa = paramBoolean;
  }
  
  public boolean i() {
    return this.consultarRendaFixa;
  }
  
  public void j(boolean paramBoolean) {
    this.consultarSeguros = paramBoolean;
  }
  
  public boolean j() {
    return this.consultarSeguros;
  }
  
  public void k(boolean paramBoolean) {
    this.consultarRenegociacao = paramBoolean;
  }
  
  public boolean k() {
    return this.consultarRenegociacao;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\iru.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */