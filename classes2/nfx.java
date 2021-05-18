import java.util.Locale;
import org.json.JSONObject;

public final class nfx extends nfy {
  private volatile int a = 0;
  
  public nfx(String paramString) {
    super(paramString);
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject != null && nfx.class.equals(paramObject.getClass())) ? b().equals(((nfx)paramObject).b()) : false;
  }
  
  public int hashCode() {
    int j = this.a;
    int i = j;
    if (j == 0) {
      i = b().hashCode() + 527;
      this.a = i;
    } 
    return i;
  }
  
  public String toString() {
    return String.format(Locale.ROOT, "Badge : { id:%s }", new Object[] { JSONObject.quote(b()) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */