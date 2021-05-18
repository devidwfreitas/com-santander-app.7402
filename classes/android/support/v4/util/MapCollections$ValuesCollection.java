package android.support.v4.util;

import java.util.Collection;
import java.util.Iterator;

final class MapCollections$ValuesCollection implements Collection<V> {
  public boolean add(V paramV) {
    throw new UnsupportedOperationException();
  }
  
  public boolean addAll(Collection<? extends V> paramCollection) {
    throw new UnsupportedOperationException();
  }
  
  public void clear() {
    MapCollections.this.colClear();
  }
  
  public boolean contains(Object paramObject) {
    return (MapCollections.this.colIndexOfValue(paramObject) >= 0);
  }
  
  public boolean containsAll(Collection<?> paramCollection) {
    Iterator<?> iterator = paramCollection.iterator();
    while (iterator.hasNext()) {
      if (!contains(iterator.next()))
        return false; 
    } 
    return true;
  }
  
  public boolean isEmpty() {
    return (MapCollections.this.colGetSize() == 0);
  }
  
  public Iterator<V> iterator() {
    return new MapCollections$ArrayIterator<V>(MapCollections.this, 1);
  }
  
  public boolean remove(Object paramObject) {
    int i = MapCollections.this.colIndexOfValue(paramObject);
    if (i >= 0) {
      MapCollections.this.colRemoveAt(i);
      return true;
    } 
    return false;
  }
  
  public boolean removeAll(Collection<?> paramCollection) {
    int i = 0;
    int j = MapCollections.this.colGetSize();
    boolean bool = false;
    while (i < j) {
      int m = i;
      int k = j;
      if (paramCollection.contains(MapCollections.this.colGetEntry(i, 1))) {
        MapCollections.this.colRemoveAt(i);
        m = i - 1;
        k = j - 1;
        bool = true;
      } 
      i = m + 1;
      j = k;
    } 
    return bool;
  }
  
  public boolean retainAll(Collection<?> paramCollection) {
    int i = 0;
    int j = MapCollections.this.colGetSize();
    boolean bool = false;
    while (i < j) {
      int m = i;
      int k = j;
      if (!paramCollection.contains(MapCollections.this.colGetEntry(i, 1))) {
        MapCollections.this.colRemoveAt(i);
        m = i - 1;
        k = j - 1;
        bool = true;
      } 
      i = m + 1;
      j = k;
    } 
    return bool;
  }
  
  public int size() {
    return MapCollections.this.colGetSize();
  }
  
  public Object[] toArray() {
    return MapCollections.this.toArrayHelper(1);
  }
  
  public <T> T[] toArray(T[] paramArrayOfT) {
    return (T[])MapCollections.this.toArrayHelper((Object[])paramArrayOfT, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MapCollections$ValuesCollection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */