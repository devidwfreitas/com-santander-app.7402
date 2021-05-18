import java.util.HashSet;
import java.util.Set;

public final class bvp {
  private final String a;
  
  private final Set<String> b = new HashSet<String>();
  
  private bvp(bvr parambvr) {
    this.a = bvr.a(parambvr);
    this.b.addAll(bvr.b(parambvr));
  }
  
  public String a() {
    return this.a;
  }
  
  public Set<String> b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */