import java.io.Serializable;
import java.util.List;

public class ajo implements Serializable {
  @ekq
  @eks(a = "count")
  private String a;
  
  @ekq
  @eks(a = "consolidated")
  private ajp b;
  
  @ekq
  @eks(a = "product")
  private List<ajn> c;
  
  public String a() {
    return this.a;
  }
  
  public void a(ajp paramajp) {
    this.b = paramajp;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<ajn> paramList) {
    this.c = paramList;
  }
  
  public ajp b() {
    return this.b;
  }
  
  public List<ajn> c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */