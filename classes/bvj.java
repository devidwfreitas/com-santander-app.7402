import android.location.Location;
import java.util.HashSet;
import java.util.Set;

public class bvj {
  private final Location a;
  
  private final bvn b;
  
  private final bvm c;
  
  private final int d;
  
  private final Set<String> e = new HashSet<String>();
  
  private bvj(bvl parambvl) {
    this.a = bvl.a(parambvl);
    this.b = bvl.b(parambvl);
    this.c = bvl.c(parambvl);
    this.d = bvl.d(parambvl);
    this.e.addAll(bvl.e(parambvl));
  }
  
  public Location a() {
    return this.a;
  }
  
  public bvn b() {
    return this.b;
  }
  
  public bvm c() {
    return this.c;
  }
  
  public int d() {
    return this.d;
  }
  
  public Set<String> e() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */