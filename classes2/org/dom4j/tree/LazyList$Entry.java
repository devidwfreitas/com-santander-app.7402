package org.dom4j.tree;

public class LazyList$Entry<E> {
  E element;
  
  LazyList$Entry<E> next;
  
  LazyList$Entry<E> previous;
  
  LazyList$Entry(E paramE, LazyList$Entry<E> paramLazyList$Entry1, LazyList$Entry<E> paramLazyList$Entry2) {
    this.element = paramE;
    this.next = paramLazyList$Entry1;
    this.previous = paramLazyList$Entry2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\LazyList$Entry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */