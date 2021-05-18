import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "request")
public class gie extends goe {
  @Element(required = false)
  private String contrato;
  
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
  
  @ElementList(inline = true, required = false)
  private List<gif> listaParcela;
  
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
    return this.contrato;
  }
  
  public void a(String paramString) {
    this.contrato = paramString;
  }
  
  public void a(List<gif> paramList) {
    this.listaParcela = paramList;
  }
  
  public String b() {
    return this.contratoCartao;
  }
  
  public void b(String paramString) {
    this.contratoCartao = paramString;
  }
  
  public String c() {
    return this.numeroCartao;
  }
  
  public void c(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String d() {
    return this.cotacaoDolar;
  }
  
  public void d(String paramString) {
    this.cotacaoDolar = paramString;
  }
  
  public String e() {
    return this.dataVencimento;
  }
  
  public void e(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String f() {
    return this.despesaConvertida;
  }
  
  public void f(String paramString) {
    this.despesaConvertida = paramString;
  }
  
  public String g() {
    return this.despesaReal;
  }
  
  public void g(String paramString) {
    this.despesaReal = paramString;
  }
  
  public String h() {
    return this.tipoParcelamento;
  }
  
  public void h(String paramString) {
    this.tipoParcelamento = paramString;
  }
  
  public String i() {
    return this.valorPagamento;
  }
  
  public void i(String paramString) {
    this.valorPagamento = paramString;
  }
  
  public String j() {
    return this.valorPagamentoMinimo;
  }
  
  public void j(String paramString) {
    this.valorPagamentoMinimo = paramString;
  }
  
  public String k() {
    return this.valorTotal;
  }
  
  public void k(String paramString) {
    this.valorTotal = paramString;
  }
  
  public List<gif> l() {
    return this.listaParcela;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gie.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */