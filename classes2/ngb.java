import java.util.Locale;
import org.json.JSONObject;

public class ngb extends nfy {
  private final double a;
  
  private volatile int b;
  
  public ngb(String paramString, double paramDouble) {
    super(paramString);
    this.a = paramDouble;
  }
  
  public double a() {
    return this.a;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != null && ngb.class.equals(paramObject.getClass())) {
      paramObject = paramObject;
      if (b().equals(paramObject.b()) && this.a == ((ngb)paramObject).a)
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    int j = this.b;
    int i = j;
    if (j == 0) {
      long l = Double.doubleToLongBits(this.a);
      i = b().hashCode();
      i = (int)(l ^ l >>> 32L) + (i + 527) * 31;
      this.b = i;
    } 
    return i;
  }
  
  public String toString() {
    return String.format(Locale.ROOT, "Metric : { id:%s, value:%f }", new Object[] { JSONObject.quote(b()), Double.valueOf(this.a) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */