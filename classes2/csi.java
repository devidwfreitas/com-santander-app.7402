import java.util.ArrayList;
import java.util.List;

public final class csi {
  private final List<String> a;
  
  private final Object b;
  
  private csi(Object paramObject) {
    this.b = csp.a(paramObject);
    this.a = new ArrayList<String>();
  }
  
  public csi a(String paramString, Object paramObject) {
    List<String> list = this.a;
    paramString = csp.<String>a(paramString);
    paramObject = String.valueOf(String.valueOf(paramObject));
    list.add((new StringBuilder(String.valueOf(paramString).length() + 1 + String.valueOf(paramObject).length())).append(paramString).append("=").append((String)paramObject).toString());
    return this;
  }
  
  public String toString() {
    StringBuilder stringBuilder = (new StringBuilder(100)).append(this.b.getClass().getSimpleName()).append('{');
    int j = this.a.size();
    for (int i = 0; i < j; i++) {
      stringBuilder.append(this.a.get(i));
      if (i < j - 1)
        stringBuilder.append(", "); 
    } 
    return stringBuilder.append('}').toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */