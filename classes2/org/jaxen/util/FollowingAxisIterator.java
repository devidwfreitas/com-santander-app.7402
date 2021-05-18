package org.jaxen.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jaxen.JaxenConstants;
import org.jaxen.JaxenRuntimeException;
import org.jaxen.Navigator;
import org.jaxen.UnsupportedAxisException;

public class FollowingAxisIterator implements Iterator {
  private Object contextNode;
  
  private Iterator currentSibling;
  
  private Navigator navigator;
  
  private Iterator siblings;
  
  public FollowingAxisIterator(Object paramObject, Navigator paramNavigator) {
    this.contextNode = paramObject;
    this.navigator = paramNavigator;
    this.siblings = paramNavigator.getFollowingSiblingAxisIterator(paramObject);
    this.currentSibling = JaxenConstants.EMPTY_ITERATOR;
  }
  
  private boolean goForward() {
    while (!this.siblings.hasNext()) {
      if (!goUp())
        return false; 
    } 
    this.currentSibling = new DescendantOrSelfAxisIterator(this.siblings.next(), this.navigator);
    return true;
  }
  
  private boolean goUp() {
    if (this.contextNode != null && !this.navigator.isDocument(this.contextNode))
      try {
        this.contextNode = this.navigator.getParentNode(this.contextNode);
        if (this.contextNode != null && !this.navigator.isDocument(this.contextNode)) {
          this.siblings = this.navigator.getFollowingSiblingAxisIterator(this.contextNode);
          return true;
        } 
        return false;
      } catch (UnsupportedAxisException unsupportedAxisException) {
        throw new JaxenRuntimeException(unsupportedAxisException);
      }  
    return false;
  }
  
  public boolean hasNext() {
    while (!this.currentSibling.hasNext()) {
      if (!goForward())
        return false; 
    } 
    return true;
  }
  
  public Object next() {
    if (!hasNext())
      throw new NoSuchElementException(); 
    return this.currentSibling.next();
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxe\\util\FollowingAxisIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */