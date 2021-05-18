package android.support.v7.widget;

import android.util.Pair;
import java.lang.reflect.Array;
import java.util.ArrayList;

final class GridLayout$Assoc<K, V> extends ArrayList<Pair<K, V>> {
  private final Class<K> keyType;
  
  private final Class<V> valueType;
  
  private GridLayout$Assoc(Class<K> paramClass, Class<V> paramClass1) {
    this.keyType = paramClass;
    this.valueType = paramClass1;
  }
  
  public static <K, V> GridLayout$Assoc<K, V> of(Class<K> paramClass, Class<V> paramClass1) {
    return new GridLayout$Assoc<K, V>(paramClass, paramClass1);
  }
  
  public GridLayout$PackedMap<K, V> pack() {
    int j = size();
    Object[] arrayOfObject1 = (Object[])Array.newInstance(this.keyType, j);
    Object[] arrayOfObject2 = (Object[])Array.newInstance(this.valueType, j);
    for (int i = 0; i < j; i++) {
      arrayOfObject1[i] = (get(i)).first;
      arrayOfObject2[i] = (get(i)).second;
    } 
    return new GridLayout$PackedMap<K, V>((K[])arrayOfObject1, (V[])arrayOfObject2);
  }
  
  public void put(K paramK, V paramV) {
    add(Pair.create(paramK, paramV));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$Assoc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */