import java.util.HashMap;
import java.util.Map;

public class bg implements bb, bd {
  private Map<Integer, byte[]> a = (Map)new HashMap<Integer, byte>();
  
  public void a(Integer paramInteger, byte[] paramArrayOfbyte) {
    this.a.put(paramInteger, paramArrayOfbyte);
  }
  
  public byte[] a(Integer paramInteger) {
    return this.a.get(paramInteger);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */