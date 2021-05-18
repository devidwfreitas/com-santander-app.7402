import java.io.Serializable;
import java.util.List;

public class gnd implements Serializable {
  @ekq
  @eks(a = "statusCode")
  private String a;
  
  @ekq
  @eks(a = "message")
  private String b;
  
  @ekq
  @eks(a = "errors")
  private List<gnc> c;
  
  public String A() {
    return this.a;
  }
  
  public String B() {
    return this.b;
  }
  
  public List<gnc> C() {
    return this.c;
  }
  
  public void b(String paramString) {
    this.a = paramString;
  }
  
  public void c(String paramString) {
    this.b = paramString;
  }
  
  public void z(List<gnc> paramList) {
    this.c = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gnd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */