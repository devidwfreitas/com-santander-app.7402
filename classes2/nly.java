import java.util.Collections;
import java.util.Map;

public final class nly<K, V> implements nlh<Map<K, nne<V>>>, nlu<Map<K, nne<V>>> {
  private static final nly<Object, Object> a = new nly(Collections.emptyMap());
  
  private final Map<K, nne<V>> b;
  
  private nly(Map<K, nne<V>> paramMap) {
    this.b = Collections.unmodifiableMap(paramMap);
  }
  
  public static <K, V> nly<K, V> a() {
    return (nly)a;
  }
  
  public static <K, V> nma<K, V> a(int paramInt) {
    return new nma<K, V>(paramInt, null);
  }
  
  public Map<K, nne<V>> c() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nly.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */