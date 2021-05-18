package org.simpleframework.xml.util;

import java.util.LinkedHashMap;
import java.util.Map;

public class LimitedCache<T> extends LinkedHashMap<Object, T> implements Cache<T> {
  private final int capacity;
  
  public LimitedCache() {
    this(50000);
  }
  
  public LimitedCache(int paramInt) {
    this.capacity = paramInt;
  }
  
  public void cache(Object paramObject, T paramT) {
    put(paramObject, paramT);
  }
  
  public boolean contains(Object paramObject) {
    return containsKey(paramObject);
  }
  
  public T fetch(Object paramObject) {
    return get(paramObject);
  }
  
  protected boolean removeEldestEntry(Map.Entry<Object, T> paramEntry) {
    return (size() > this.capacity);
  }
  
  public T take(Object paramObject) {
    return remove(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xm\\util\LimitedCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */