package org.simpleframework.xml.util;

import java.util.concurrent.ConcurrentHashMap;

public class ConcurrentCache<T> extends ConcurrentHashMap<Object, T> implements Cache<T> {
  public void cache(Object paramObject, T paramT) {
    put(paramObject, paramT);
  }
  
  public boolean contains(Object paramObject) {
    return containsKey(paramObject);
  }
  
  public T fetch(Object paramObject) {
    return get(paramObject);
  }
  
  public T take(Object paramObject) {
    return remove(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xm\\util\ConcurrentCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */