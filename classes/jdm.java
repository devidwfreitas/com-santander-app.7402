import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;

public class jdm extends gnb implements Serializable, Cloneable {
  @ElementList(name = "categoriaFundos", required = false)
  private List<jdl> categoriaFundos;
  
  @Element(required = false)
  private String saldoBrutoTotal;
  
  @Element(required = false)
  private String saldoLiquidoTotal;
  
  public jdm a() {
    return (jdm)super.clone();
  }
  
  public void a(String paramString) {
    this.saldoBrutoTotal = paramString;
  }
  
  public void a(List<jdl> paramList) {
    this.categoriaFundos = paramList;
  }
  
  public String b() {
    return this.saldoBrutoTotal;
  }
  
  public void b(String paramString) {
    this.saldoLiquidoTotal = paramString;
  }
  
  public String c() {
    return this.saldoLiquidoTotal;
  }
  
  public List<jdl> d() {
    return this.categoriaFundos;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jdm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */