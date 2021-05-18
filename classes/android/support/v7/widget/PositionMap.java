package android.support.v7.widget;

import java.util.ArrayList;

class PositionMap<E> implements Cloneable {
  private static final Object DELETED = new Object();
  
  private boolean mGarbage = false;
  
  private int[] mKeys;
  
  private int mSize;
  
  private Object[] mValues;
  
  public PositionMap() {
    this(10);
  }
  
  public PositionMap(int paramInt) {
    if (paramInt == 0) {
      this.mKeys = PositionMap$ContainerHelpers.EMPTY_INTS;
      this.mValues = PositionMap$ContainerHelpers.EMPTY_OBJECTS;
    } else {
      paramInt = idealIntArraySize(paramInt);
      this.mKeys = new int[paramInt];
      this.mValues = new Object[paramInt];
    } 
    this.mSize = 0;
  }
  
  private void gc() {
    int k = this.mSize;
    int[] arrayOfInt = this.mKeys;
    Object[] arrayOfObject = this.mValues;
    int i = 0;
    int j;
    for (j = 0; i < k; j = m) {
      Object object = arrayOfObject[i];
      int m = j;
      if (object != DELETED) {
        if (i != j) {
          arrayOfInt[j] = arrayOfInt[i];
          arrayOfObject[j] = object;
          arrayOfObject[i] = null;
        } 
        m = j + 1;
      } 
      i++;
    } 
    this.mGarbage = false;
    this.mSize = j;
  }
  
  static int idealBooleanArraySize(int paramInt) {
    return idealByteArraySize(paramInt);
  }
  
  static int idealByteArraySize(int paramInt) {
    for (int i = 4;; i++) {
      int j = paramInt;
      if (i < 32) {
        if (paramInt <= (1 << i) - 12)
          return (1 << i) - 12; 
      } else {
        return j;
      } 
    } 
  }
  
  static int idealCharArraySize(int paramInt) {
    return idealByteArraySize(paramInt * 2) / 2;
  }
  
  static int idealFloatArraySize(int paramInt) {
    return idealByteArraySize(paramInt * 4) / 4;
  }
  
  static int idealIntArraySize(int paramInt) {
    return idealByteArraySize(paramInt * 4) / 4;
  }
  
  static int idealLongArraySize(int paramInt) {
    return idealByteArraySize(paramInt * 8) / 8;
  }
  
  static int idealObjectArraySize(int paramInt) {
    return idealByteArraySize(paramInt * 4) / 4;
  }
  
  static int idealShortArraySize(int paramInt) {
    return idealByteArraySize(paramInt * 2) / 2;
  }
  
  public void append(int paramInt, E paramE) {
    if (this.mSize != 0 && paramInt <= this.mKeys[this.mSize - 1]) {
      put(paramInt, paramE);
      return;
    } 
    if (this.mGarbage && this.mSize >= this.mKeys.length)
      gc(); 
    int i = this.mSize;
    if (i >= this.mKeys.length) {
      int j = idealIntArraySize(i + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(this.mKeys, 0, arrayOfInt, 0, this.mKeys.length);
      System.arraycopy(this.mValues, 0, arrayOfObject, 0, this.mValues.length);
      this.mKeys = arrayOfInt;
      this.mValues = arrayOfObject;
    } 
    this.mKeys[i] = paramInt;
    this.mValues[i] = paramE;
    this.mSize = i + 1;
  }
  
  public void clear() {
    int j = this.mSize;
    Object[] arrayOfObject = this.mValues;
    for (int i = 0; i < j; i++)
      arrayOfObject[i] = null; 
    this.mSize = 0;
    this.mGarbage = false;
  }
  
  public PositionMap<E> clone() {
    try {
      PositionMap<E> positionMap = (PositionMap)super.clone();
      try {
        positionMap.mKeys = (int[])this.mKeys.clone();
        positionMap.mValues = (Object[])this.mValues.clone();
        return positionMap;
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        return positionMap;
      } 
    } catch (CloneNotSupportedException cloneNotSupportedException) {
      return null;
    } 
  }
  
  public void delete(int paramInt) {
    paramInt = PositionMap$ContainerHelpers.binarySearch(this.mKeys, this.mSize, paramInt);
    if (paramInt >= 0 && this.mValues[paramInt] != DELETED) {
      this.mValues[paramInt] = DELETED;
      this.mGarbage = true;
    } 
  }
  
  public E get(int paramInt) {
    return get(paramInt, null);
  }
  
  public E get(int paramInt, E paramE) {
    paramInt = PositionMap$ContainerHelpers.binarySearch(this.mKeys, this.mSize, paramInt);
    return (E)((paramInt < 0 || this.mValues[paramInt] == DELETED) ? (Object)paramE : this.mValues[paramInt]);
  }
  
  public int indexOfKey(int paramInt) {
    if (this.mGarbage)
      gc(); 
    return PositionMap$ContainerHelpers.binarySearch(this.mKeys, this.mSize, paramInt);
  }
  
  public int indexOfValue(E paramE) {
    if (this.mGarbage)
      gc(); 
    for (int i = 0; i < this.mSize; i++) {
      if (this.mValues[i] == paramE)
        return i; 
    } 
    return -1;
  }
  
  public void insertKeyRange(int paramInt1, int paramInt2) {}
  
  public int keyAt(int paramInt) {
    if (this.mGarbage)
      gc(); 
    return this.mKeys[paramInt];
  }
  
  public void put(int paramInt, E paramE) {
    int i = PositionMap$ContainerHelpers.binarySearch(this.mKeys, this.mSize, paramInt);
    if (i >= 0) {
      this.mValues[i] = paramE;
      return;
    } 
    int j = i ^ 0xFFFFFFFF;
    if (j < this.mSize && this.mValues[j] == DELETED) {
      this.mKeys[j] = paramInt;
      this.mValues[j] = paramE;
      return;
    } 
    i = j;
    if (this.mGarbage) {
      i = j;
      if (this.mSize >= this.mKeys.length) {
        gc();
        i = PositionMap$ContainerHelpers.binarySearch(this.mKeys, this.mSize, paramInt) ^ 0xFFFFFFFF;
      } 
    } 
    if (this.mSize >= this.mKeys.length) {
      j = idealIntArraySize(this.mSize + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(this.mKeys, 0, arrayOfInt, 0, this.mKeys.length);
      System.arraycopy(this.mValues, 0, arrayOfObject, 0, this.mValues.length);
      this.mKeys = arrayOfInt;
      this.mValues = arrayOfObject;
    } 
    if (this.mSize - i != 0) {
      System.arraycopy(this.mKeys, i, this.mKeys, i + 1, this.mSize - i);
      System.arraycopy(this.mValues, i, this.mValues, i + 1, this.mSize - i);
    } 
    this.mKeys[i] = paramInt;
    this.mValues[i] = paramE;
    this.mSize++;
  }
  
  public void remove(int paramInt) {
    delete(paramInt);
  }
  
  public void removeAt(int paramInt) {
    if (this.mValues[paramInt] != DELETED) {
      this.mValues[paramInt] = DELETED;
      this.mGarbage = true;
    } 
  }
  
  public void removeAtRange(int paramInt1, int paramInt2) {
    paramInt2 = Math.min(this.mSize, paramInt1 + paramInt2);
    while (paramInt1 < paramInt2) {
      removeAt(paramInt1);
      paramInt1++;
    } 
  }
  
  public void removeKeyRange(ArrayList<E> paramArrayList, int paramInt1, int paramInt2) {}
  
  public void setValueAt(int paramInt, E paramE) {
    if (this.mGarbage)
      gc(); 
    this.mValues[paramInt] = paramE;
  }
  
  public int size() {
    if (this.mGarbage)
      gc(); 
    return this.mSize;
  }
  
  public String toString() {
    if (size() <= 0)
      return "{}"; 
    StringBuilder stringBuilder = new StringBuilder(this.mSize * 28);
    stringBuilder.append('{');
    for (int i = 0; i < this.mSize; i++) {
      if (i > 0)
        stringBuilder.append(", "); 
      stringBuilder.append(keyAt(i));
      stringBuilder.append('=');
      E e = valueAt(i);
      if (e != this) {
        stringBuilder.append(e);
      } else {
        stringBuilder.append("(this Map)");
      } 
    } 
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
  
  public E valueAt(int paramInt) {
    if (this.mGarbage)
      gc(); 
    return (E)this.mValues[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\PositionMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */