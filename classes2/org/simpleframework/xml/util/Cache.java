package org.simpleframework.xml.util;

public interface Cache<T> {
  void cache(Object paramObject, T paramT);
  
  boolean contains(Object paramObject);
  
  T fetch(Object paramObject);
  
  boolean isEmpty();
  
  T take(Object paramObject);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xm\\util\Cache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */