package com.ca.org.acra.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

public class BoundedLinkedList<E> extends LinkedList<E> {
  private final int maxSize;
  
  public BoundedLinkedList(int paramInt) {
    this.maxSize = paramInt;
  }
  
  public void add(int paramInt, E paramE) {
    if (size() == this.maxSize)
      removeFirst(); 
    super.add(paramInt, paramE);
  }
  
  public boolean add(E paramE) {
    if (size() == this.maxSize)
      removeFirst(); 
    return super.add(paramE);
  }
  
  public boolean addAll(int paramInt, Collection<? extends E> paramCollection) {
    throw new UnsupportedOperationException();
  }
  
  public boolean addAll(Collection<? extends E> paramCollection) {
    int i = size() + paramCollection.size() - this.maxSize;
    if (i > 0)
      removeRange(0, i); 
    return super.addAll(paramCollection);
  }
  
  public void addFirst(E paramE) {
    throw new UnsupportedOperationException();
  }
  
  public void addLast(E paramE) {
    add(paramE);
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    Iterator<E> iterator = iterator();
    while (iterator.hasNext())
      stringBuilder.append(iterator.next().toString()); 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acr\\util\BoundedLinkedList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */