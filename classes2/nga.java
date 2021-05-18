import java.util.Locale;
import org.json.JSONObject;

public final class nga extends nfy {
  private final boolean a;
  
  private volatile int b;
  
  public nga(String paramString, boolean paramBoolean) {
    super(paramString);
    this.a = paramBoolean;
    this.b = 0;
  }
  
  public boolean a() {
    return this.a;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != null && nga.class.equals(paramObject.getClass())) {
      paramObject = paramObject;
      if (b().equals(paramObject.b()) && this.a == ((nga)paramObject).a)
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    int j = this.b;
    int i = j;
    if (j == 0) {
      j = b().hashCode();
      if (this.a) {
        i = 1;
      } else {
        i = 0;
      } 
      i += (j + 527) * 31;
      this.b = i;
    } 
    return i;
  }
  
  public String toString() {
    return String.format(Locale.ROOT, "Flag : { id:%s, value:%b }", new Object[] { JSONObject.quote(b()), Boolean.valueOf(this.a) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nga.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */