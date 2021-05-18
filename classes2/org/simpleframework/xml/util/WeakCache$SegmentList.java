package org.simpleframework.xml.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class WeakCache$SegmentList implements Iterable<WeakCache<T>.Segment> {
  private List<WeakCache<T>.Segment> list = new ArrayList<WeakCache<T>.Segment>();
  
  private int size;
  
  public WeakCache$SegmentList(int paramInt) {
    this.size = paramInt;
    create(paramInt);
  }
  
  private void create(int paramInt) {
    while (paramInt > 0) {
      this.list.add(new WeakCache$Segment(WeakCache.this, null));
      paramInt--;
    } 
  }
  
  private int segment(Object paramObject) {
    return Math.abs(paramObject.hashCode() % this.size);
  }
  
  public WeakCache<T>.Segment get(Object paramObject) {
    int i = segment(paramObject);
    return (i < this.size) ? this.list.get(i) : null;
  }
  
  public Iterator<WeakCache<T>.Segment> iterator() {
    return this.list.iterator();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xm\\util\WeakCache$SegmentList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */