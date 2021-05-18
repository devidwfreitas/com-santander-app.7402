import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

public final class nlx<K, V> implements nlu<Map<K, V>> {
  private final Map<K, nne<V>> a;
  
  private nlx(Map<K, nne<V>> paramMap) {
    this.a = Collections.unmodifiableMap(paramMap);
  }
  
  public static <K, V> nlx<K, V> a(nne<Map<K, nne<V>>> paramnne) {
    return new nlx<K, V>(paramnne.b());
  }
  
  public Map<K, V> a() {
    LinkedHashMap<?, ?> linkedHashMap = nlr.c(this.a.size());
    for (Map.Entry<K, nne<V>> entry : this.a.entrySet())
      linkedHashMap.put(entry.getKey(), ((nne)entry.getValue()).b()); 
    return Collections.unmodifiableMap((Map)linkedHashMap);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nlx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */