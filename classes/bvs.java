import java.util.HashSet;
import java.util.Set;

public final class bvs {
  private final int a;
  
  private final int b;
  
  private final String c;
  
  private final Set<String> d = new HashSet<String>();
  
  private final Set<String> e = new HashSet<String>();
  
  private bvs(bvu parambvu) {
    this.a = bvu.a(parambvu);
    this.b = bvu.b(parambvu);
    this.c = bvu.c(parambvu);
    this.d.addAll(bvu.d(parambvu));
    this.e.addAll(bvu.e(parambvu));
  }
  
  public int a() {
    return this.a;
  }
  
  public int b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
  
  public Set<String> d() {
    return this.d;
  }
  
  public Set<String> e() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */