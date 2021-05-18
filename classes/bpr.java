import android.annotation.SuppressLint;
import java.util.Map;

final class bpr implements Map.Entry<String, Object> {
  private final String a;
  
  private final Object b;
  
  bpr(String paramString, Object paramObject) {
    this.a = paramString;
    this.b = paramObject;
  }
  
  @SuppressLint({"FieldGetter"})
  public String a() {
    return this.a;
  }
  
  public Object getValue() {
    return this.b;
  }
  
  public Object setValue(Object paramObject) {
    throw new UnsupportedOperationException("JSONObjectEntry is immutable");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */