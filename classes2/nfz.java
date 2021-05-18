import java.util.Locale;
import org.json.JSONObject;

public final class nfz extends nfy {
  private final long a;
  
  private volatile int b;
  
  public nfz(String paramString, long paramLong) {
    super(paramString);
    this.a = paramLong;
  }
  
  public long a() {
    return this.a;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != null && nfz.class.equals(paramObject.getClass())) {
      paramObject = paramObject;
      if (b().equals(paramObject.b()) && this.a == ((nfz)paramObject).a)
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    int j = this.b;
    int i = j;
    if (j == 0) {
      i = (b().hashCode() + 527) * 31 + (int)(this.a ^ this.a >>> 32L);
      this.b = i;
    } 
    return i;
  }
  
  public String toString() {
    return String.format(Locale.ROOT, "Date : { id:%s, timestamp_ms:%d }", new Object[] { JSONObject.quote(b()), Long.valueOf(this.a) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */