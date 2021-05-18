import java.io.Serializable;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class jdf extends gnb implements Serializable {
  private Double a;
  
  @ElementList(name = "categoriasInvestimentos", required = false)
  private List<jdb> categoriasInvestimentos;
  
  @Element(required = false)
  private boolean grafico;
  
  @Element(required = false)
  private boolean questionario;
  
  @Element(required = false)
  private String saldoBrutoTotal;
  
  public void a(Double paramDouble) {
    this.a = paramDouble;
  }
  
  public void a(String paramString) {
    this.saldoBrutoTotal = paramString;
  }
  
  public void a(List<jdb> paramList) {
    this.categoriasInvestimentos = paramList;
  }
  
  public void a(boolean paramBoolean) {
    this.questionario = paramBoolean;
  }
  
  public boolean a() {
    return this.questionario;
  }
  
  public void b(boolean paramBoolean) {
    this.grafico = paramBoolean;
  }
  
  public boolean b() {
    return this.grafico;
  }
  
  public String c() {
    return this.saldoBrutoTotal;
  }
  
  public List<jdb> d() {
    return this.categoriasInvestimentos;
  }
  
  public String e() {
    try {
      Double double_ = this.a;
      return NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(double_).replace("R$", "R$ ");
    } catch (Exception exception) {
      return "R$ 0,00";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jdf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */