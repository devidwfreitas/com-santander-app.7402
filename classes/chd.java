import java.util.Iterator;
import java.util.List;

public class chd extends cgg<ciu> {
  public chd() {}
  
  public chd(List<ciu> paramList) {
    super(paramList);
  }
  
  public chd(ciu... paramVarArgs) {
    super(paramVarArgs);
  }
  
  public float a() {
    Iterator<ciu> iterator = this.i.iterator();
    float f = 0.0F;
    while (iterator.hasNext()) {
      float f1 = ((ciu)iterator.next()).b();
      if (f1 > f)
        f = f1; 
    } 
    return f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */