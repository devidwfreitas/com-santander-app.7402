package android.support.v4.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

final class MapCollections$KeySet implements Set<K> {
  public boolean add(K paramK) {
    throw new UnsupportedOperationException();
  }
  
  public boolean addAll(Collection<? extends K> paramCollection) {
    throw new UnsupportedOperationException();
  }
  
  public void clear() {
    MapCollections.this.colClear();
  }
  
  public boolean contains(Object paramObject) {
    return (MapCollections.this.colIndexOfKey(paramObject) >= 0);
  }
  
  public boolean containsAll(Collection<?> paramCollection) {
    return MapCollections.containsAllHelper(MapCollections.this.colGetMap(), paramCollection);
  }
  
  public boolean equals(Object paramObject) {
    return MapCollections.equalsSetHelper(this, paramObject);
  }
  
  public int hashCode() {
    int i = MapCollections.this.colGetSize() - 1;
    int j = 0;
    while (i >= 0) {
      int k;
      Object object = MapCollections.this.colGetEntry(i, 0);
      if (object == null) {
        k = 0;
      } else {
        k = object.hashCode();
      } 
      j += k;
      i--;
    } 
    return j;
  }
  
  public boolean isEmpty() {
    return (MapCollections.this.colGetSize() == 0);
  }
  
  public Iterator<K> iterator() {
    return new MapCollections$ArrayIterator<K>(MapCollections.this, 0);
  }
  
  public boolean remove(Object paramObject) {
    int i = MapCollections.this.colIndexOfKey(paramObject);
    if (i >= 0) {
      MapCollections.this.colRemoveAt(i);
      return true;
    } 
    return false;
  }
  
  public boolean removeAll(Collection<?> paramCollection) {
    return MapCollections.removeAllHelper(MapCollections.this.colGetMap(), paramCollection);
  }
  
  public boolean retainAll(Collection<?> paramCollection) {
    return MapCollections.retainAllHelper(MapCollections.this.colGetMap(), paramCollection);
  }
  
  public int size() {
    return MapCollections.this.colGetSize();
  }
  
  public Object[] toArray() {
    return MapCollections.this.toArrayHelper(0);
  }
  
  public <T> T[] toArray(T[] paramArrayOfT) {
    return (T[])MapCollections.this.toArrayHelper((Object[])paramArrayOfT, 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MapCollections$KeySet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */