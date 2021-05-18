package org.dom4j.tree;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class ConcurrentReaderHashMap$HashIterator implements Enumeration, Iterator {
  protected Object currentKey;
  
  protected Object currentValue;
  
  protected ConcurrentReaderHashMap$Entry entry = null;
  
  protected int index;
  
  protected ConcurrentReaderHashMap$Entry lastReturned = null;
  
  protected final ConcurrentReaderHashMap$Entry[] tab;
  
  protected ConcurrentReaderHashMap$HashIterator() {
    this.tab = paramConcurrentReaderHashMap.getTableForReading();
    this.index = this.tab.length - 1;
  }
  
  public boolean hasMoreElements() {
    return hasNext();
  }
  
  public boolean hasNext() {
    while (true) {
      if (this.entry != null) {
        Object object = this.entry.value;
        if (object != null) {
          this.currentKey = this.entry.key;
          this.currentValue = object;
          return true;
        } 
        this.entry = this.entry.next;
      } 
      while (this.entry == null && this.index >= 0) {
        ConcurrentReaderHashMap$Entry[] arrayOfConcurrentReaderHashMap$Entry = this.tab;
        int i = this.index;
        this.index = i - 1;
        this.entry = arrayOfConcurrentReaderHashMap$Entry[i];
      } 
      if (this.entry == null) {
        this.currentValue = null;
        this.currentKey = null;
        return false;
      } 
    } 
  }
  
  public Object next() {
    if (this.currentKey == null && !hasNext())
      throw new NoSuchElementException(); 
    Object object = returnValueOfNext();
    this.lastReturned = this.entry;
    this.currentValue = null;
    this.currentKey = null;
    this.entry = this.entry.next;
    return object;
  }
  
  public Object nextElement() {
    return next();
  }
  
  public void remove() {
    if (this.lastReturned == null)
      throw new IllegalStateException(); 
    ConcurrentReaderHashMap.this.remove(this.lastReturned.key);
    this.lastReturned = null;
  }
  
  protected Object returnValueOfNext() {
    return this.entry;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\ConcurrentReaderHashMap$HashIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */