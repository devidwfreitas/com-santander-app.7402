import java.io.Serializable;
import java.util.ArrayList;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "pagamentoResponse")
public class jsu extends gnb implements Serializable {
  @Element(required = false)
  private String dtVencimentoYYYYMMDD;
  
  @Element(required = false)
  private String flagOfertaDebitoAutomatico;
  
  @Element(required = false)
  private String flagPagamentoCartao;
  
  @ElementList(name = "fields", required = false)
  private ArrayList<gku> listaFields;
  
  @Element(required = false)
  private String tipoLogger;
  
  @Element(required = false)
  private String valorTaxaCartao;
  
  public String a() {
    return this.flagOfertaDebitoAutomatico;
  }
  
  public void a(String paramString) {
    this.flagOfertaDebitoAutomatico = paramString;
  }
  
  public void a(ArrayList<gku> paramArrayList) {
    this.listaFields = paramArrayList;
  }
  
  public String b() {
    return this.flagPagamentoCartao;
  }
  
  public void b(String paramString) {
    this.flagPagamentoCartao = paramString;
  }
  
  public String c() {
    return this.valorTaxaCartao;
  }
  
  public void c(String paramString) {
    this.valorTaxaCartao = paramString;
  }
  
  public String d() {
    return this.tipoLogger;
  }
  
  public void d(String paramString) {
    this.tipoLogger = paramString;
  }
  
  public String e() {
    return this.dtVencimentoYYYYMMDD;
  }
  
  public void e(String paramString) {
    this.dtVencimentoYYYYMMDD = paramString;
  }
  
  public ArrayList<gku> f() {
    return this.listaFields;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jsu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */