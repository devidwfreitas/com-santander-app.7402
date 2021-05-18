import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class kla extends goe implements Serializable {
  @Element(required = false)
  private String autenticacao;
  
  @Element(required = false)
  private String codNIO;
  
  @Element(required = false)
  private String codSequencia;
  
  @Element(required = false)
  private String codTabela;
  
  @Element(required = false)
  private String contaCorrente;
  
  @Element(required = false)
  private String dataFinal;
  
  @Element(required = false)
  private String dataInicial;
  
  @Element(required = false)
  private String idComprovante;
  
  @Element(required = false)
  private String subTipoComprovante;
  
  @Element(required = false)
  private String tipoComprovante;
  
  public String a() {
    return this.dataInicial;
  }
  
  public void a(String paramString) {
    this.dataInicial = paramString;
  }
  
  public String b() {
    return this.dataFinal;
  }
  
  public void b(String paramString) {
    this.dataFinal = paramString;
  }
  
  public String c() {
    return this.autenticacao;
  }
  
  public void c(String paramString) {
    this.autenticacao = paramString;
  }
  
  public String d() {
    return this.tipoComprovante;
  }
  
  public void d(String paramString) {
    this.tipoComprovante = paramString;
  }
  
  public String e() {
    return this.codSequencia;
  }
  
  public void e(String paramString) {
    this.codSequencia = paramString;
  }
  
  public String f() {
    return this.codNIO;
  }
  
  public void f(String paramString) {
    this.codNIO = paramString;
  }
  
  public String g() {
    return this.codTabela;
  }
  
  public void g(String paramString) {
    this.codTabela = paramString;
  }
  
  public String h() {
    return this.idComprovante;
  }
  
  public void h(String paramString) {
    this.idComprovante = paramString;
  }
  
  public String i() {
    return this.subTipoComprovante;
  }
  
  public void i(String paramString) {
    this.subTipoComprovante = paramString;
  }
  
  public String j() {
    return this.contaCorrente;
  }
  
  public void j(String paramString) {
    this.contaCorrente = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kla.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */