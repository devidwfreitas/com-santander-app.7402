import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "idSantander")
public class ive {
  private Boolean a = Boolean.valueOf(true);
  
  private String b;
  
  @Element(required = false)
  private String idDispositivo;
  
  public String a() {
    return this.idDispositivo;
  }
  
  public void a(Boolean paramBoolean) {
    this.a = paramBoolean;
  }
  
  public void a(String paramString) {
    this.idDispositivo = paramString;
  }
  
  public Boolean b() {
    return this.a;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ive.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */