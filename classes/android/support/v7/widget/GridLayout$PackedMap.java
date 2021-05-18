package android.support.v7.widget;

import java.lang.reflect.Array;
import java.util.HashMap;

final class GridLayout$PackedMap<K, V> {
  public final int[] index;
  
  public final K[] keys;
  
  public final V[] values;
  
  GridLayout$PackedMap(K[] paramArrayOfK, V[] paramArrayOfV) {
    this.index = createIndex(paramArrayOfK);
    this.keys = compact(paramArrayOfK, this.index);
    this.values = compact(paramArrayOfV, this.index);
  }
  
  private static <K> K[] compact(K[] paramArrayOfK, int[] paramArrayOfint) {
    int j = paramArrayOfK.length;
    Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfK.getClass().getComponentType(), GridLayout.max2(paramArrayOfint, -1) + 1);
    for (int i = 0; i < j; i++)
      arrayOfObject[paramArrayOfint[i]] = paramArrayOfK[i]; 
    return (K[])arrayOfObject;
  }
  
  private static <K> int[] createIndex(K[] paramArrayOfK) {
    int j = paramArrayOfK.length;
    int[] arrayOfInt = new int[j];
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    for (int i = 0; i < j; i++) {
      K k = paramArrayOfK[i];
      Integer integer2 = (Integer)hashMap.get(k);
      Integer integer1 = integer2;
      if (integer2 == null) {
        integer1 = Integer.valueOf(hashMap.size());
        hashMap.put(k, integer1);
      } 
      arrayOfInt[i] = integer1.intValue();
    } 
    return arrayOfInt;
  }
  
  public V getValue(int paramInt) {
    return this.values[this.index[paramInt]];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$PackedMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */