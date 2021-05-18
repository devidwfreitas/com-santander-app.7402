import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class nav extends gnb implements Serializable {
  @Element(required = false)
  private Integer codigoRetorno;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  public Integer a() {
    return this.codigoRetorno;
  }
  
  public void a(Integer paramInteger) {
    this.codigoRetorno = paramInteger;
  }
  
  public void a(String paramString) {
    this.mensagemRetorno = paramString;
  }
  
  public String b() {
    return this.mensagemRetorno;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\nav.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */