package org.dom4j.tree;

import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;

public class LazyList$LazyListIterator implements ListIterator<E> {
  private int expectedModCount = LazyList.access$100(LazyList.this);
  
  private int indexNext;
  
  private LazyList$Entry<E> lastReturned = LazyList.this.header;
  
  private LazyList$Entry<E> next;
  
  LazyList$LazyListIterator(int paramInt) {
    this.next = paramLazyList.getEntryHeader(paramInt);
  }
  
  public void add(E paramE) {
    checkForComodification();
    this.lastReturned = LazyList.this.header;
    LazyList.this.addElement(paramE, this.next);
    this.indexNext++;
    this.expectedModCount++;
  }
  
  final void checkForComodification() {
    if (LazyList.access$200(LazyList.this) != this.expectedModCount)
      throw new ConcurrentModificationException(); 
  }
  
  final void checkForOutside() {
    if (this.lastReturned == LazyList.this.header)
      throw new IllegalStateException(); 
  }
  
  public boolean hasNext() {
    return (this.indexNext != LazyList.this.size);
  }
  
  public boolean hasPrevious() {
    return (this.indexNext != 0);
  }
  
  public E next() {
    checkForComodification();
    if (this.indexNext == LazyList.this.size)
      throw new NoSuchElementException(); 
    this.lastReturned = this.next;
    this.next = this.next.next;
    this.indexNext++;
    return this.lastReturned.element;
  }
  
  public int nextIndex() {
    return this.indexNext;
  }
  
  public E previous() {
    checkForComodification();
    if (this.indexNext == 0)
      throw new NoSuchElementException(); 
    this.next = this.next.previous;
    this.lastReturned = this.next;
    this.indexNext--;
    return this.lastReturned.element;
  }
  
  public int previousIndex() {
    return this.indexNext - 1;
  }
  
  public void remove() {
    checkForOutside();
    checkForComodification();
    LazyList$Entry<E> lazyList$Entry = this.lastReturned.next;
    LazyList.this.removeEntry(this.lastReturned);
    if (this.next == this.lastReturned) {
      this.next = lazyList$Entry;
    } else {
      this.indexNext--;
    } 
    this.lastReturned = LazyList.this.header;
    this.expectedModCount++;
  }
  
  public void set(E paramE) {
    checkForOutside();
    checkForComodification();
    this.lastReturned.element = paramE;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\LazyList$LazyListIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */