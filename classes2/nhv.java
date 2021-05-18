import java.util.EventListener;
import java.util.List;
import java.util.Map;

public class nhv extends nib<niz> {
  private final String a;
  
  private final String b;
  
  private final int c;
  
  private final Map<String, List<String>> d;
  
  private final byte[] e;
  
  public nhv(String paramString1, String paramString2, int paramInt, Map<String, List<String>> paramMap, byte[] paramArrayOfbyte) {
    super(niz.class);
    this.a = paramString1;
    if (paramString1 != null) {
      this.b = paramString2;
      if (paramString2 != null) {
        this.c = paramInt;
        if (paramInt != 0) {
          this.d = paramMap;
          if (paramMap != null) {
            this.e = paramArrayOfbyte;
            if (paramArrayOfbyte != null)
              return; 
          } 
        } 
      } 
    } 
    throw new IllegalArgumentException();
  }
  
  public void a(niz paramniz) {
    paramniz.a(this.a, this.b, this.c, this.d, this.e);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */