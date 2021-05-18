import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "entrada")
public class mku extends goe {
  @Element(required = false)
  private String tipoConta;
  
  public String a() {
    return this.tipoConta;
  }
  
  public void a(String paramString) {
    this.tipoConta = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mku.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */