package android.support.v4.util;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {
  MapCollections<K, V> mCollections;
  
  public ArrayMap() {}
  
  public ArrayMap(int paramInt) {
    super(paramInt);
  }
  
  public ArrayMap(SimpleArrayMap paramSimpleArrayMap) {
    super(paramSimpleArrayMap);
  }
  
  private MapCollections<K, V> getCollection() {
    if (this.mCollections == null)
      this.mCollections = new ArrayMap$1(this); 
    return this.mCollections;
  }
  
  public boolean containsAll(Collection<?> paramCollection) {
    return MapCollections.containsAllHelper(this, paramCollection);
  }
  
  public Set<Map.Entry<K, V>> entrySet() {
    return getCollection().getEntrySet();
  }
  
  public Set<K> keySet() {
    return getCollection().getKeySet();
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap) {
    ensureCapacity(this.mSize + paramMap.size());
    for (Map.Entry<? extends K, ? extends V> entry : paramMap.entrySet())
      put((K)entry.getKey(), (V)entry.getValue()); 
  }
  
  public boolean removeAll(Collection<?> paramCollection) {
    return MapCollections.removeAllHelper(this, paramCollection);
  }
  
  public boolean retainAll(Collection<?> paramCollection) {
    return MapCollections.retainAllHelper(this, paramCollection);
  }
  
  public Collection<V> values() {
    return getCollection().getValues();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\ArrayMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */