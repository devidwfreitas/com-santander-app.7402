import java.util.HashSet;
import java.util.Set;

public class bvr {
  private String a;
  
  private final Set<String> b = new HashSet<String>();
  
  public bvp a() {
    return new bvp(this, null);
  }
  
  public bvr a(String paramString) {
    this.a = paramString;
    return this;
  }
  
  public bvr a(String[] paramArrayOfString) {
    int j = paramArrayOfString.length;
    for (int i = 0; i < j; i++) {
      String str = paramArrayOfString[i];
      this.b.add(str);
    } 
    return this;
  }
  
  public bvr b(String paramString) {
    this.b.add(paramString);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */