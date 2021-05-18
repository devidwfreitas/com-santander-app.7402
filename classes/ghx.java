import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "request")
public class ghx extends goe {
  @Element(required = false)
  private String contratoCartao;
  
  @Element(required = false)
  private String cotacaoDolar;
  
  @Element(required = false)
  private String dataVencimento;
  
  @Element(required = false)
  private String despesaConvertida;
  
  @Element(required = false)
  private String despesaReal;
  
  @Element(required = false)
  private String numeroCartao;
  
  @Element(required = false)
  private String tipoParcelamento;
  
  @Element(required = false)
  private String valorPagamento;
  
  @Element(required = false)
  private String valorPagamentoMinimo;
  
  @Element(required = false)
  private String valorTotal;
  
  public String a() {
    return this.contratoCartao;
  }
  
  public void a(String paramString) {
    this.contratoCartao = paramString;
  }
  
  public String b() {
    return this.numeroCartao;
  }
  
  public void b(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String c() {
    return this.tipoParcelamento;
  }
  
  public void c(String paramString) {
    this.tipoParcelamento = paramString;
  }
  
  public String d() {
    return this.valorPagamento;
  }
  
  public void d(String paramString) {
    this.valorPagamento = paramString;
  }
  
  public String e() {
    return this.valorPagamentoMinimo;
  }
  
  public void e(String paramString) {
    this.valorPagamentoMinimo = paramString;
  }
  
  public String f() {
    return this.valorTotal;
  }
  
  public void f(String paramString) {
    this.valorTotal = paramString;
  }
  
  public String g() {
    return this.cotacaoDolar;
  }
  
  public void g(String paramString) {
    this.cotacaoDolar = paramString;
  }
  
  public String h() {
    return this.dataVencimento;
  }
  
  public void h(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String i() {
    return this.despesaConvertida;
  }
  
  public void i(String paramString) {
    this.despesaConvertida = paramString;
  }
  
  public String j() {
    return this.despesaReal;
  }
  
  public void j(String paramString) {
    this.despesaReal = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ghx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */