package org.jaxen.util;

import java.util.AbstractList;

public class SingletonList extends AbstractList {
  private final Object element;
  
  public SingletonList(Object paramObject) {
    this.element = paramObject;
  }
  
  public Object get(int paramInt) {
    if (paramInt == 0)
      return this.element; 
    throw new IndexOutOfBoundsException(paramInt + " != 0");
  }
  
  public int size() {
    return 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxe\\util\SingletonList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */