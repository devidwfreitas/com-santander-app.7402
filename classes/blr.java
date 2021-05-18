import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

class blr implements Serializable {
  private static final long a = 20160629001L;
  
  private final HashMap<bkf, List<bkl>> b;
  
  private blr(HashMap<bkf, List<bkl>> paramHashMap) {
    this.b = paramHashMap;
  }
  
  private Object readResolve() {
    return new blp(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\blr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */