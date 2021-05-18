import org.simpleframework.xml.Element;

public class mro {
  @Element(required = false)
  private String key;
  
  @Element(required = false)
  private String value;
  
  public mro() {}
  
  public mro(String paramString1, String paramString2) {
    this.key = paramString1;
    this.value = paramString2;
  }
  
  public String a() {
    return this.key;
  }
  
  public String b() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mro.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */