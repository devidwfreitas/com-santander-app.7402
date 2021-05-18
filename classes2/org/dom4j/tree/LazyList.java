package org.dom4j.tree;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.text.MessageFormat;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;

public class LazyList<E> extends AbstractSequentialList<E> implements Serializable {
  private static final long serialVersionUID = 0L;
  
  protected final transient LazyList$Entry<E> header = new LazyList$Entry<E>(null, null, null);
  
  protected transient E[] indexedList = null;
  
  protected transient int size = 0;
  
  static {
    boolean bool;
    if (!LazyList.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    $assertionsDisabled = bool;
  }
  
  public LazyList() {
    this.header.next = this.header;
    this.header.previous = this.header;
  }
  
  protected LazyList(LazyList$Entry<E> paramLazyList$Entry) {}
  
  private LazyList$Range<E> getRange(int paramInt1, int paramInt2) {
    boolean bool = false;
    int i = 0;
    if (paramInt1 < 0 || paramInt2 > this.size || paramInt1 > paramInt2)
      throw new IndexOutOfBoundsException(MessageFormat.format("FromIndex: {0}, ToIndex: {1}, Size: {2}", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(this.size) })); 
    int[] arrayOfInt = new int[3];
    arrayOfInt[0] = paramInt1;
    arrayOfInt[1] = paramInt2 - paramInt1;
    arrayOfInt[2] = this.size - paramInt2;
    LazyList$Range<E> lazyList$Range = new LazyList$Range(null);
    if (arrayOfInt[0] < arrayOfInt[2]) {
      lazyList$Range.lower = this.header;
      while (i <= paramInt1) {
        lazyList$Range.lower = lazyList$Range.lower.next;
        i++;
      } 
      if (arrayOfInt[1] < arrayOfInt[2]) {
        lazyList$Range.upper = lazyList$Range.lower;
        while (paramInt1 <= paramInt2) {
          lazyList$Range.upper = lazyList$Range.upper.next;
          paramInt1++;
        } 
      } else {
        lazyList$Range.upper = this.header;
        for (paramInt1 = this.size; paramInt1 > paramInt2; paramInt1--)
          lazyList$Range.upper = lazyList$Range.upper.previous; 
      } 
    } else {
      lazyList$Range.upper = this.header;
      for (i = this.size; i > paramInt2; i--)
        lazyList$Range.upper = lazyList$Range.upper.previous; 
      if (arrayOfInt[0] < arrayOfInt[1]) {
        lazyList$Range.lower = this.header;
        for (paramInt2 = bool; paramInt2 <= paramInt1; paramInt2++)
          lazyList$Range.lower = lazyList$Range.lower.next; 
      } else {
        lazyList$Range.lower = lazyList$Range.upper;
        while (paramInt2 > paramInt1) {
          lazyList$Range.lower = lazyList$Range.lower.previous;
          paramInt2--;
        } 
      } 
    } 
    return lazyList$Range;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream) {
    paramObjectInputStream.defaultReadObject();
    CloneHelper.setFinalField(LazyList.class, this, "header", new LazyList$Entry(null, null, null));
    assert this.header != null;
    LazyList$Entry<E> lazyList$Entry1 = this.header;
    LazyList$Entry<E> lazyList$Entry2 = this.header;
    LazyList$Entry<E> lazyList$Entry3 = this.header;
    lazyList$Entry2.previous = lazyList$Entry3;
    lazyList$Entry1.next = lazyList$Entry3;
    int j = paramObjectInputStream.readInt();
    Object[] arrayOfObject = new Object[j];
    for (int i = 0; i < j; i++) {
      Object object = paramObjectInputStream.readObject();
      addElement((E)object, this.header);
      arrayOfObject[i] = object;
    } 
    this.indexedList = (E[])arrayOfObject;
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream) {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeInt(this.size);
    for (LazyList$Entry<E> lazyList$Entry = this.header.next; lazyList$Entry != this.header; lazyList$Entry = lazyList$Entry.next)
      paramObjectOutputStream.writeObject(lazyList$Entry.element); 
  }
  
  public void add(int paramInt, E paramE) {
    LazyList$Entry<E> lazyList$Entry;
    if (paramInt == this.size) {
      lazyList$Entry = this.header;
    } else {
      lazyList$Entry = getEntry(paramInt);
    } 
    addElement(paramE, lazyList$Entry);
  }
  
  public boolean add(E paramE) {
    addElement(paramE, this.header);
    return true;
  }
  
  public boolean addAll(int paramInt, Collection<? extends E> paramCollection) {
    if (paramCollection.isEmpty())
      return false; 
    LazyList$Entry<E> lazyList$Entry = (getEntryHeader(paramInt)).next;
    Iterator<? extends E> iterator = paramCollection.iterator();
    while (iterator.hasNext())
      addElement(iterator.next(), lazyList$Entry); 
    return true;
  }
  
  public boolean addAll(Collection<? extends E> paramCollection) {
    return addAll(0, paramCollection);
  }
  
  protected LazyList$Entry<E> addElement(E paramE, LazyList$Entry<E> paramLazyList$Entry) {
    this.indexedList = null;
    LazyList$Entry<E> lazyList$Entry = new LazyList$Entry<E>(paramE, paramLazyList$Entry, paramLazyList$Entry.previous);
    lazyList$Entry.previous.next = lazyList$Entry;
    lazyList$Entry.next.previous = lazyList$Entry;
    this.size++;
    this.modCount++;
    return lazyList$Entry;
  }
  
  public void clear() {
    this.indexedList = null;
    this.size = 0;
    this.header.element = null;
    this.header.next = this.header;
    this.header.previous = this.header;
    this.modCount++;
  }
  
  public LazyList<E> clone() {
    LazyList<E> lazyList = new LazyList();
    for (LazyList$Entry<E> lazyList$Entry = this.header.next; lazyList$Entry != this.header; lazyList$Entry = lazyList$Entry.next)
      lazyList.add(lazyList$Entry.element); 
    return lazyList;
  }
  
  protected void createIndexedList() {
    if (this.indexedList == null) {
      this.indexedList = (E[])new Object[this.size];
      int i = 0;
      for (E e : this) {
        this.indexedList[i] = e;
        i++;
      } 
    } 
  }
  
  public E get(int paramInt) {
    createIndexedList();
    return this.indexedList[paramInt];
  }
  
  protected LazyList$Entry<E> getEntry(int paramInt) {
    if (paramInt < 0 || paramInt >= this.size)
      throw new IndexOutOfBoundsException(MessageFormat.format("Index: {0}, Size: {1}", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(this.size) })); 
    if (paramInt == 0)
      return this.header.next; 
    LazyList$Entry<E> lazyList$Entry1 = this.header;
    if (paramInt < this.size >> 1) {
      int j = 0;
      LazyList$Entry<E> lazyList$Entry = lazyList$Entry1;
      while (true) {
        lazyList$Entry1 = lazyList$Entry;
        if (j <= paramInt) {
          lazyList$Entry = lazyList$Entry.next;
          j++;
          continue;
        } 
        return lazyList$Entry1;
      } 
    } 
    int i = this.size;
    LazyList$Entry<E> lazyList$Entry2 = lazyList$Entry1;
    while (true) {
      lazyList$Entry1 = lazyList$Entry2;
      if (i > paramInt) {
        lazyList$Entry2 = lazyList$Entry2.previous;
        i--;
        continue;
      } 
      return lazyList$Entry1;
    } 
  }
  
  protected LazyList$Entry<E> getEntryHeader(int paramInt) {
    if (paramInt < 0 || paramInt > this.size)
      throw new IndexOutOfBoundsException(MessageFormat.format("Index: {0}, Size: {1}", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(this.size) })); 
    if (paramInt == 0)
      return this.header.next; 
    LazyList$Entry<E> lazyList$Entry1 = this.header;
    if (paramInt < this.size >> 1) {
      int j = 0;
      LazyList$Entry<E> lazyList$Entry = lazyList$Entry1;
      while (true) {
        lazyList$Entry1 = lazyList$Entry;
        if (j < paramInt) {
          lazyList$Entry = lazyList$Entry.next;
          j++;
          continue;
        } 
        return lazyList$Entry1;
      } 
    } 
    int i = this.size;
    LazyList$Entry<E> lazyList$Entry2 = lazyList$Entry1;
    while (true) {
      lazyList$Entry1 = lazyList$Entry2;
      if (i > paramInt) {
        lazyList$Entry2 = lazyList$Entry2.previous;
        i--;
        continue;
      } 
      return lazyList$Entry1;
    } 
  }
  
  public ListIterator<E> listIterator(int paramInt) {
    return new LazyList$LazyListIterator(this, paramInt);
  }
  
  public E remove(int paramInt) {
    return removeEntry(getEntry(paramInt));
  }
  
  protected E removeEntry(LazyList$Entry<E> paramLazyList$Entry) {
    if (paramLazyList$Entry == this.header)
      throw new NoSuchElementException(); 
    this.indexedList = null;
    paramLazyList$Entry.previous.next = paramLazyList$Entry.next;
    paramLazyList$Entry.next.previous = paramLazyList$Entry.previous;
    this.size--;
    this.modCount++;
    return paramLazyList$Entry.element;
  }
  
  protected void removeRange(int paramInt1, int paramInt2) {
    LazyList$Range<E> lazyList$Range = getRange(paramInt1, paramInt2);
    lazyList$Range.lower.previous.next = lazyList$Range.upper;
    lazyList$Range.upper.previous = lazyList$Range.lower.previous;
  }
  
  public E set(int paramInt, E paramE) {
    LazyList$Entry<E> lazyList$Entry = getEntry(paramInt);
    E e = lazyList$Entry.element;
    lazyList$Entry.element = paramE;
    if (this.indexedList != null)
      this.indexedList[paramInt] = paramE; 
    return e;
  }
  
  public int size() {
    return this.size;
  }
  
  public List<E> subList(int paramInt1, int paramInt2) {
    LazyList$Range<E> lazyList$Range = getRange(paramInt1, paramInt2);
    LazyList$Entry<E> lazyList$Entry2 = new LazyList$Entry<E>(null, lazyList$Range.lower, lazyList$Range.upper);
    LazyList$Entry<E> lazyList$Entry1 = lazyList$Entry2;
    while (lazyList$Range.lower != lazyList$Range.upper) {
      lazyList$Entry1.next = new LazyList$Entry<E>(lazyList$Range.lower.element, null, lazyList$Entry1);
      lazyList$Entry1 = lazyList$Entry1.next;
      lazyList$Range.lower = lazyList$Range.lower.next;
    } 
    lazyList$Entry2.previous = lazyList$Entry1;
    return new LazyList(lazyList$Entry2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\LazyList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */