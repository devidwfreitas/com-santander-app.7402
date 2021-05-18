package org.jaxen.util;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.NoSuchElementException;
import org.jaxen.JaxenConstants;
import org.jaxen.Navigator;

public class PrecedingSiblingAxisIterator implements Iterator {
  private Object contextNode;
  
  private Navigator navigator;
  
  private Object nextObj;
  
  private Iterator siblingIter;
  
  public PrecedingSiblingAxisIterator(Object paramObject, Navigator paramNavigator) {
    this.contextNode = paramObject;
    this.navigator = paramNavigator;
    init();
    if (this.siblingIter.hasNext())
      this.nextObj = this.siblingIter.next(); 
  }
  
  private void init() {
    Object object = this.navigator.getParentNode(this.contextNode);
    if (object != null) {
      object = this.navigator.getChildAxisIterator(object);
      LinkedList linkedList = new LinkedList();
      while (true) {
        if (object.hasNext()) {
          Object object1 = object.next();
          if (!object1.equals(this.contextNode)) {
            linkedList.addFirst(object1);
            continue;
          } 
        } 
        this.siblingIter = linkedList.iterator();
        return;
      } 
    } 
    this.siblingIter = JaxenConstants.EMPTY_ITERATOR;
  }
  
  public boolean hasNext() {
    return (this.nextObj != null);
  }
  
  public Object next() {
    if (!hasNext())
      throw new NoSuchElementException(); 
    Object object = this.nextObj;
    if (this.siblingIter.hasNext()) {
      this.nextObj = this.siblingIter.next();
      return object;
    } 
    this.nextObj = null;
    return object;
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxe\\util\PrecedingSiblingAxisIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */