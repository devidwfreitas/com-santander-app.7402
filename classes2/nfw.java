import java.util.Locale;
import org.json.JSONObject;

public final class nfw extends nfy {
  private final String a;
  
  private volatile int b;
  
  public nfw(String paramString1, String paramString2) {
    super(paramString1);
    if (paramString2 == null || paramString2.length() == 0)
      throw new IllegalArgumentException("name must be provided."); 
    this.a = paramString2;
  }
  
  public String a() {
    return this.a;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != null && nfw.class.equals(paramObject.getClass())) {
      paramObject = paramObject;
      if (b().equals(paramObject.b()) && this.a.equals(((nfw)paramObject).a))
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    int j = this.b;
    int i = j;
    if (j == 0) {
      i = (b().hashCode() + 527) * 31 + this.a.hashCode();
      this.b = i;
    } 
    return i;
  }
  
  public String toString() {
    return String.format(Locale.ROOT, "Audience : { id:%s, name:%s }", new Object[] { JSONObject.quote(b()), JSONObject.quote(this.a) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */