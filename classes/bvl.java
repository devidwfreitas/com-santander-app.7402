import android.location.Location;
import java.util.HashSet;
import java.util.Set;

public class bvl {
  private Location a;
  
  private bvn b = bvn.HIGH_ACCURACY;
  
  private bvm c;
  
  private int d;
  
  private final Set<String> e = new HashSet<String>();
  
  public bvj a() {
    return new bvj(this, null);
  }
  
  public bvl a(int paramInt) {
    this.d = paramInt;
    return this;
  }
  
  public bvl a(Location paramLocation) {
    this.a = paramLocation;
    return this;
  }
  
  public bvl a(bvm parambvm) {
    this.c = parambvm;
    return this;
  }
  
  public bvl a(bvn parambvn) {
    this.b = parambvn;
    return this;
  }
  
  public bvl a(String paramString) {
    this.e.add(paramString);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */