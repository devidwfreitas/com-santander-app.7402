package android.support.v4.util;

import java.util.Map;

class ArrayMap$1 extends MapCollections<K, V> {
  protected void colClear() {
    ArrayMap.this.clear();
  }
  
  protected Object colGetEntry(int paramInt1, int paramInt2) {
    return ArrayMap.this.mArray[(paramInt1 << 1) + paramInt2];
  }
  
  protected Map<K, V> colGetMap() {
    return ArrayMap.this;
  }
  
  protected int colGetSize() {
    return ArrayMap.this.mSize;
  }
  
  protected int colIndexOfKey(Object paramObject) {
    return ArrayMap.this.indexOfKey(paramObject);
  }
  
  protected int colIndexOfValue(Object paramObject) {
    return ArrayMap.this.indexOfValue(paramObject);
  }
  
  protected void colPut(K paramK, V paramV) {
    ArrayMap.this.put(paramK, paramV);
  }
  
  protected void colRemoveAt(int paramInt) {
    ArrayMap.this.removeAt(paramInt);
  }
  
  protected V colSetValue(int paramInt, V paramV) {
    return (V)ArrayMap.this.setValueAt(paramInt, paramV);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\ArrayMap$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */