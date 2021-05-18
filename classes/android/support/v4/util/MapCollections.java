package android.support.v4.util;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class MapCollections<K, V> {
  EntrySet mEntrySet;
  
  KeySet mKeySet;
  
  ValuesCollection mValues;
  
  public static <K, V> boolean containsAllHelper(Map<K, V> paramMap, Collection<?> paramCollection) {
    Iterator<?> iterator = paramCollection.iterator();
    while (iterator.hasNext()) {
      if (!paramMap.containsKey(iterator.next()))
        return false; 
    } 
    return true;
  }
  
  public static <T> boolean equalsSetHelper(Set<T> paramSet, Object paramObject) {
    boolean bool1 = true;
    boolean bool = false;
    if (paramSet == paramObject)
      return true; 
    if (paramObject instanceof Set) {
      paramObject = paramObject;
      try {
        if (paramSet.size() == paramObject.size()) {
          bool = paramSet.containsAll((Collection<?>)paramObject);
          if (bool)
            return bool1; 
        } 
        return false;
      } catch (NullPointerException nullPointerException) {
        return false;
      } catch (ClassCastException classCastException) {
        return false;
      } 
    } 
    return bool;
  }
  
  public static <K, V> boolean removeAllHelper(Map<K, V> paramMap, Collection<?> paramCollection) {
    int i = paramMap.size();
    Iterator<?> iterator = paramCollection.iterator();
    while (iterator.hasNext())
      paramMap.remove(iterator.next()); 
    return (i != paramMap.size());
  }
  
  public static <K, V> boolean retainAllHelper(Map<K, V> paramMap, Collection<?> paramCollection) {
    int i = paramMap.size();
    Iterator iterator = paramMap.keySet().iterator();
    while (iterator.hasNext()) {
      if (!paramCollection.contains(iterator.next()))
        iterator.remove(); 
    } 
    return (i != paramMap.size());
  }
  
  protected abstract void colClear();
  
  protected abstract Object colGetEntry(int paramInt1, int paramInt2);
  
  protected abstract Map<K, V> colGetMap();
  
  protected abstract int colGetSize();
  
  protected abstract int colIndexOfKey(Object paramObject);
  
  protected abstract int colIndexOfValue(Object paramObject);
  
  protected abstract void colPut(K paramK, V paramV);
  
  protected abstract void colRemoveAt(int paramInt);
  
  protected abstract V colSetValue(int paramInt, V paramV);
  
  public Set<Map.Entry<K, V>> getEntrySet() {
    if (this.mEntrySet == null)
      this.mEntrySet = new MapCollections$EntrySet(this); 
    return this.mEntrySet;
  }
  
  public Set<K> getKeySet() {
    if (this.mKeySet == null)
      this.mKeySet = new MapCollections$KeySet(this); 
    return this.mKeySet;
  }
  
  public Collection<V> getValues() {
    if (this.mValues == null)
      this.mValues = new MapCollections$ValuesCollection(this); 
    return this.mValues;
  }
  
  public Object[] toArrayHelper(int paramInt) {
    int j = colGetSize();
    Object[] arrayOfObject = new Object[j];
    for (int i = 0; i < j; i++)
      arrayOfObject[i] = colGetEntry(i, paramInt); 
    return arrayOfObject;
  }
  
  public <T> T[] toArrayHelper(T[] paramArrayOfT, int paramInt) {
    int j = colGetSize();
    if (paramArrayOfT.length < j)
      paramArrayOfT = (T[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), j); 
    for (int i = 0; i < j; i++)
      paramArrayOfT[i] = (T)colGetEntry(i, paramInt); 
    if (paramArrayOfT.length > j)
      paramArrayOfT[j] = null; 
    return paramArrayOfT;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MapCollections.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */