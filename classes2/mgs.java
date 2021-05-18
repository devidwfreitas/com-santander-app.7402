import java.util.HashMap;
import java.util.Map;

public class mgs {
  private Map<kuq, kva> a = new HashMap<kuq, kva>();
  
  public void a() {
    this.a.clear();
  }
  
  public void a(kuq paramkuq) {
    if (this.a.containsKey(paramkuq))
      this.a.remove(paramkuq); 
  }
  
  public void a(kuq paramkuq, kva paramkva) {
    this.a.put(paramkuq, paramkva);
  }
  
  public kva b(kuq paramkuq) {
    return c(paramkuq) ? this.a.get(paramkuq) : null;
  }
  
  public boolean c(kuq paramkuq) {
    return this.a.containsKey(paramkuq);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */