package org.jaxen.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jaxen.JaxenRuntimeException;
import org.jaxen.Navigator;
import org.jaxen.UnsupportedAxisException;

public class DescendantAxisIterator implements Iterator {
  private Iterator children;
  
  private Navigator navigator;
  
  private ArrayList stack = new ArrayList();
  
  public DescendantAxisIterator(Object paramObject, Navigator paramNavigator) {
    this(paramNavigator, paramNavigator.getChildAxisIterator(paramObject));
  }
  
  public DescendantAxisIterator(Navigator paramNavigator, Iterator paramIterator) {
    this.navigator = paramNavigator;
    this.children = paramIterator;
  }
  
  public boolean hasNext() {
    while (!this.children.hasNext()) {
      if (this.stack.isEmpty())
        return false; 
      this.children = this.stack.remove(this.stack.size() - 1);
    } 
    return true;
  }
  
  public Object next() {
    try {
      if (hasNext()) {
        Object object = this.children.next();
        this.stack.add(this.children);
        this.children = this.navigator.getChildAxisIterator(object);
        return object;
      } 
      throw new NoSuchElementException();
    } catch (UnsupportedAxisException unsupportedAxisException) {
      throw new JaxenRuntimeException(unsupportedAxisException);
    } 
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxe\\util\DescendantAxisIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */