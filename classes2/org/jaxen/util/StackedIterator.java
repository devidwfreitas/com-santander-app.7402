package org.jaxen.util;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.NoSuchElementException;
import java.util.Set;
import org.jaxen.Navigator;

public abstract class StackedIterator implements Iterator {
  private Set created = new HashSet();
  
  private LinkedList iteratorStack = new LinkedList();
  
  private Navigator navigator;
  
  protected StackedIterator() {}
  
  public StackedIterator(Object paramObject, Navigator paramNavigator) {
    init(paramObject, paramNavigator);
  }
  
  private Iterator currentIterator() {
    while (this.iteratorStack.size() > 0) {
      Iterator iterator = this.iteratorStack.getFirst();
      if (iterator.hasNext())
        return iterator; 
      this.iteratorStack.removeFirst();
    } 
    return null;
  }
  
  protected abstract Iterator createIterator(Object paramObject);
  
  protected Navigator getNavigator() {
    return this.navigator;
  }
  
  public boolean hasNext() {
    Iterator iterator = currentIterator();
    return (iterator == null) ? false : iterator.hasNext();
  }
  
  protected void init(Object paramObject, Navigator paramNavigator) {
    this.navigator = paramNavigator;
  }
  
  protected Iterator internalCreateIterator(Object paramObject) {
    if (this.created.contains(paramObject))
      return null; 
    this.created.add(paramObject);
    return createIterator(paramObject);
  }
  
  public Object next() {
    if (!hasNext())
      throw new NoSuchElementException(); 
    Object object = currentIterator().next();
    pushIterator(internalCreateIterator(object));
    return object;
  }
  
  protected void pushIterator(Iterator paramIterator) {
    if (paramIterator != null)
      this.iteratorStack.addFirst(paramIterator); 
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxe\\util\StackedIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */