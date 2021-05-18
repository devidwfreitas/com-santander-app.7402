package android.support.v4.util;

import java.util.Iterator;
import java.util.Map;

final class MapCollections$MapIterator implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {
  int mEnd;
  
  boolean mEntryValid = false;
  
  int mIndex;
  
  MapCollections$MapIterator() {
    this.mEnd = paramMapCollections.colGetSize() - 1;
    this.mIndex = -1;
  }
  
  public final boolean equals(Object paramObject) {
    boolean bool = true;
    if (!this.mEntryValid)
      throw new IllegalStateException("This container does not support retaining Map.Entry objects"); 
    if (!(paramObject instanceof Map.Entry))
      return false; 
    paramObject = paramObject;
    if (!ContainerHelpers.equal(paramObject.getKey(), MapCollections.this.colGetEntry(this.mIndex, 0)) || !ContainerHelpers.equal(paramObject.getValue(), MapCollections.this.colGetEntry(this.mIndex, 1)))
      bool = false; 
    return bool;
  }
  
  public K getKey() {
    if (!this.mEntryValid)
      throw new IllegalStateException("This container does not support retaining Map.Entry objects"); 
    return (K)MapCollections.this.colGetEntry(this.mIndex, 0);
  }
  
  public V getValue() {
    if (!this.mEntryValid)
      throw new IllegalStateException("This container does not support retaining Map.Entry objects"); 
    return (V)MapCollections.this.colGetEntry(this.mIndex, 1);
  }
  
  public boolean hasNext() {
    return (this.mIndex < this.mEnd);
  }
  
  public final int hashCode() {
    int i;
    int j = 0;
    if (!this.mEntryValid)
      throw new IllegalStateException("This container does not support retaining Map.Entry objects"); 
    Object object1 = MapCollections.this.colGetEntry(this.mIndex, 0);
    Object object2 = MapCollections.this.colGetEntry(this.mIndex, 1);
    if (object1 == null) {
      i = 0;
    } else {
      i = object1.hashCode();
    } 
    if (object2 != null)
      j = object2.hashCode(); 
    return j ^ i;
  }
  
  public Map.Entry<K, V> next() {
    this.mIndex++;
    this.mEntryValid = true;
    return this;
  }
  
  public void remove() {
    if (!this.mEntryValid)
      throw new IllegalStateException(); 
    MapCollections.this.colRemoveAt(this.mIndex);
    this.mIndex--;
    this.mEnd--;
    this.mEntryValid = false;
  }
  
  public V setValue(V paramV) {
    if (!this.mEntryValid)
      throw new IllegalStateException("This container does not support retaining Map.Entry objects"); 
    return (V)MapCollections.this.colSetValue(this.mIndex, paramV);
  }
  
  public final String toString() {
    return (new StringBuilder()).append(getKey()).append("=").append(getValue()).toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MapCollections$MapIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */