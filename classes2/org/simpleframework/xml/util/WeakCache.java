package org.simpleframework.xml.util;

import java.util.Iterator;

public class WeakCache<T> implements Cache<T> {
  private SegmentList list;
  
  public WeakCache() {
    this(10);
  }
  
  public WeakCache(int paramInt) {
    this.list = new WeakCache$SegmentList(this, paramInt);
  }
  
  private Segment map(Object paramObject) {
    return this.list.get(paramObject);
  }
  
  public void cache(Object paramObject, T paramT) {
    map(paramObject).cache(paramObject, paramT);
  }
  
  public boolean contains(Object paramObject) {
    return map(paramObject).contains(paramObject);
  }
  
  public T fetch(Object paramObject) {
    return map(paramObject).fetch(paramObject);
  }
  
  public boolean isEmpty() {
    Iterator<Segment> iterator = this.list.iterator();
    while (iterator.hasNext()) {
      if (!((WeakCache$Segment)iterator.next()).isEmpty())
        return false; 
    } 
    return true;
  }
  
  public T take(Object paramObject) {
    return map(paramObject).take(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xm\\util\WeakCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */