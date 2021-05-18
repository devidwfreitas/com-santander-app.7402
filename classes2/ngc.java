import java.util.Locale;
import org.json.JSONObject;

public class ngc extends nfy {
  private final String a;
  
  private volatile int b;
  
  public ngc(String paramString1, String paramString2) {
    super(paramString1);
    this.a = paramString2;
  }
  
  public String a() {
    return this.a;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != null && ngc.class.equals(paramObject.getClass())) {
      paramObject = paramObject;
      if (b().equals(paramObject.b())) {
        boolean bool1;
        boolean bool2;
        if (this.a == null) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        if (((ngc)paramObject).a == null) {
          bool2 = true;
        } else {
          bool2 = false;
        } 
        if (bool1 && bool2)
          return true; 
        if ((bool1 ^ bool2) == 0)
          return this.a.equals(((ngc)paramObject).a); 
      } 
    } 
    return false;
  }
  
  public int hashCode() {
    int j = this.b;
    int i = j;
    if (j == 0) {
      j = b().hashCode() + 527;
      i = j;
      if (this.a != null)
        i = j * 31 + this.a.hashCode(); 
      this.b = i;
    } 
    return i;
  }
  
  public String toString() {
    return String.format(Locale.ROOT, "Property : { id:%s, value:%s }", new Object[] { JSONObject.quote(b()), JSONObject.quote(this.a) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */