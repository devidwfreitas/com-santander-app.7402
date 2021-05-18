import java.util.ArrayList;
import java.util.List;

public final class fxf {
  private static final List<fxg> a = new ArrayList<fxg>();
  
  static {
    a.clear();
    a.add(new fxj());
    a.add(new fxk());
    a.add(new fxi());
  }
  
  public static int a() {
    return a.size();
  }
  
  public static fxg a(int paramInt) {
    return a.get(paramInt);
  }
  
  public static boolean b() {
    return a.isEmpty();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */