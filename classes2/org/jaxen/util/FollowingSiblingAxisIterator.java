package org.jaxen.util;

import java.util.Iterator;
import org.jaxen.JaxenConstants;
import org.jaxen.Navigator;

public class FollowingSiblingAxisIterator implements Iterator {
  private Object contextNode;
  
  private Navigator navigator;
  
  private Iterator siblingIter;
  
  public FollowingSiblingAxisIterator(Object paramObject, Navigator paramNavigator) {
    this.contextNode = paramObject;
    this.navigator = paramNavigator;
    init();
  }
  
  private void init() {
    Object object = this.navigator.getParentNode(this.contextNode);
    if (object != null) {
      this.siblingIter = this.navigator.getChildAxisIterator(object);
      do {
      
      } while (this.siblingIter.hasNext() && !this.siblingIter.next().equals(this.contextNode));
      return;
    } 
    this.siblingIter = JaxenConstants.EMPTY_ITERATOR;
  }
  
  public boolean hasNext() {
    return this.siblingIter.hasNext();
  }
  
  public Object next() {
    return this.siblingIter.next();
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxe\\util\FollowingSiblingAxisIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */