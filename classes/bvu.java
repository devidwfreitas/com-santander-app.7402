import java.util.HashSet;
import java.util.Set;

public class bvu {
  private int a;
  
  private int b;
  
  private String c;
  
  private final Set<String> d = new HashSet<String>();
  
  private final Set<String> e = new HashSet<String>();
  
  public bvs a() {
    return new bvs(this, null);
  }
  
  public bvu a(int paramInt) {
    this.a = paramInt;
    return this;
  }
  
  public bvu a(String paramString) {
    this.c = paramString;
    return this;
  }
  
  public bvu b(int paramInt) {
    this.b = paramInt;
    return this;
  }
  
  public bvu b(String paramString) {
    this.d.add(paramString);
    return this;
  }
  
  public bvu c(String paramString) {
    this.e.add(paramString);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */