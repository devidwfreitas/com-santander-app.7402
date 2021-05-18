import java.io.Serializable;
import java.util.List;

public class gex implements Serializable {
  private List<gev> a;
  
  private boolean b = false;
  
  public void a(List<gev> paramList) {
    this.a = paramList;
  }
  
  public void a(boolean paramBoolean) {
    this.b = paramBoolean;
  }
  
  public boolean a() {
    return this.b;
  }
  
  public List<gev> b() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */