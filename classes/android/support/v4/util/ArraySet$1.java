package android.support.v4.util;

import java.util.Map;

class ArraySet$1 extends MapCollections<E, E> {
  protected void colClear() {
    ArraySet.this.clear();
  }
  
  protected Object colGetEntry(int paramInt1, int paramInt2) {
    return ArraySet.this.mArray[paramInt1];
  }
  
  protected Map<E, E> colGetMap() {
    throw new UnsupportedOperationException("not a map");
  }
  
  protected int colGetSize() {
    return ArraySet.this.mSize;
  }
  
  protected int colIndexOfKey(Object paramObject) {
    return ArraySet.this.indexOf(paramObject);
  }
  
  protected int colIndexOfValue(Object paramObject) {
    return ArraySet.this.indexOf(paramObject);
  }
  
  protected void colPut(E paramE1, E paramE2) {
    ArraySet.this.add(paramE1);
  }
  
  protected void colRemoveAt(int paramInt) {
    ArraySet.this.removeAt(paramInt);
  }
  
  protected E colSetValue(int paramInt, E paramE) {
    throw new UnsupportedOperationException("not a map");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\ArraySet$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */