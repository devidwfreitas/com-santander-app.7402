import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class gia extends gnb {
  @Element(required = false)
  private String cotacaoDolar;
  
  @Element(required = false)
  private String custoEfetivoTotal;
  
  @Element(required = false)
  private String dataVencimento;
  
  @Element(required = false)
  private String despesaConvertida;
  
  @Element(required = false)
  private String despesaReal;
  
  @ElementList(inline = true, required = false)
  private List<gif> listaParcela;
  
  @Element(required = false)
  private String taxaJuros;
  
  @Element(required = false)
  private String valorIOF;
  
  @Element(required = false)
  private String valorPagamento;
  
  @Element(required = false)
  private String valorPagamentoMinimo;
  
  @Element(required = false)
  private String valorTarifa;
  
  @Element(required = false)
  private String valorTotal;
  
  public String a() {
    return this.cotacaoDolar;
  }
  
  public void a(String paramString) {
    this.cotacaoDolar = paramString;
  }
  
  public void a(List<gif> paramList) {
    this.listaParcela = paramList;
  }
  
  public String b() {
    return this.dataVencimento;
  }
  
  public void b(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String c() {
    return this.despesaConvertida;
  }
  
  public void c(String paramString) {
    this.despesaConvertida = paramString;
  }
  
  public String d() {
    return this.despesaReal;
  }
  
  public void d(String paramString) {
    this.despesaReal = paramString;
  }
  
  public List<gif> e() {
    return this.listaParcela;
  }
  
  public void e(String paramString) {
    this.valorPagamentoMinimo = paramString;
  }
  
  public String f() {
    return this.valorPagamentoMinimo;
  }
  
  public void f(String paramString) {
    this.taxaJuros = paramString;
  }
  
  public String g() {
    return this.taxaJuros;
  }
  
  public void g(String paramString) {
    this.valorIOF = paramString;
  }
  
  public String h() {
    return this.valorIOF;
  }
  
  public void h(String paramString) {
    this.valorTarifa = paramString;
  }
  
  public String i() {
    return this.valorTarifa;
  }
  
  public void i(String paramString) {
    this.custoEfetivoTotal = paramString;
  }
  
  public String j() {
    return this.custoEfetivoTotal;
  }
  
  public void j(String paramString) {
    this.valorTotal = paramString;
  }
  
  public String k() {
    return this.valorTotal;
  }
  
  public void k(String paramString) {
    this.valorPagamento = paramString;
  }
  
  public String l() {
    return this.valorPagamento;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gia.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */