import java.io.Serializable;
import java.util.List;

public class igi extends gnd implements Serializable {
  @ekq
  @eks(a = "data")
  private List<igl> a;
  
  public List<igl> a() {
    return this.a;
  }
  
  public void a(List<igl> paramList) {
    this.a = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\igi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */