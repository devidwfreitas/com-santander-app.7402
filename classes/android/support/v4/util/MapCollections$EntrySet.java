package android.support.v4.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class MapCollections$EntrySet implements Set<Map.Entry<K, V>> {
  public boolean add(Map.Entry<K, V> paramEntry) {
    throw new UnsupportedOperationException();
  }
  
  public boolean addAll(Collection<? extends Map.Entry<K, V>> paramCollection) {
    int i = MapCollections.this.colGetSize();
    for (Map.Entry<K, V> entry : paramCollection)
      MapCollections.this.colPut(entry.getKey(), entry.getValue()); 
    return (i != MapCollections.this.colGetSize());
  }
  
  public void clear() {
    MapCollections.this.colClear();
  }
  
  public boolean contains(Object paramObject) {
    if (paramObject instanceof Map.Entry) {
      paramObject = paramObject;
      int i = MapCollections.this.colIndexOfKey(paramObject.getKey());
      if (i >= 0)
        return ContainerHelpers.equal(MapCollections.this.colGetEntry(i, 1), paramObject.getValue()); 
    } 
    return false;
  }
  
  public boolean containsAll(Collection<?> paramCollection) {
    Iterator<?> iterator = paramCollection.iterator();
    while (iterator.hasNext()) {
      if (!contains(iterator.next()))
        return false; 
    } 
    return true;
  }
  
  public boolean equals(Object paramObject) {
    return MapCollections.equalsSetHelper(this, paramObject);
  }
  
  public int hashCode() {
    int j = MapCollections.this.colGetSize() - 1;
    int i;
    for (i = 0; j >= 0; i += m ^ k) {
      int k;
      int m;
      Object object1 = MapCollections.this.colGetEntry(j, 0);
      Object object2 = MapCollections.this.colGetEntry(j, 1);
      if (object1 == null) {
        k = 0;
      } else {
        k = object1.hashCode();
      } 
      if (object2 == null) {
        m = 0;
      } else {
        m = object2.hashCode();
      } 
      j--;
    } 
    return i;
  }
  
  public boolean isEmpty() {
    return (MapCollections.this.colGetSize() == 0);
  }
  
  public Iterator<Map.Entry<K, V>> iterator() {
    return new MapCollections$MapIterator(MapCollections.this);
  }
  
  public boolean remove(Object paramObject) {
    throw new UnsupportedOperationException();
  }
  
  public boolean removeAll(Collection<?> paramCollection) {
    throw new UnsupportedOperationException();
  }
  
  public boolean retainAll(Collection<?> paramCollection) {
    throw new UnsupportedOperationException();
  }
  
  public int size() {
    return MapCollections.this.colGetSize();
  }
  
  public Object[] toArray() {
    throw new UnsupportedOperationException();
  }
  
  public <T> T[] toArray(T[] paramArrayOfT) {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MapCollections$EntrySet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */