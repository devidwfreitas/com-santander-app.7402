package org.jaxen.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jaxen.JaxenRuntimeException;
import org.jaxen.Navigator;
import org.jaxen.UnsupportedAxisException;

public class AncestorOrSelfAxisIterator implements Iterator {
  private Object contextNode;
  
  private Navigator navigator;
  
  public AncestorOrSelfAxisIterator(Object paramObject, Navigator paramNavigator) {
    this.contextNode = paramObject;
    this.navigator = paramNavigator;
  }
  
  public boolean hasNext() {
    return (this.contextNode != null);
  }
  
  public Object next() {
    try {
      if (hasNext()) {
        Object object = this.contextNode;
        this.contextNode = this.navigator.getParentNode(this.contextNode);
        return object;
      } 
      throw new NoSuchElementException("Exhausted ancestor-or-self axis");
    } catch (UnsupportedAxisException unsupportedAxisException) {
      throw new JaxenRuntimeException(unsupportedAxisException);
    } 
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxe\\util\AncestorOrSelfAxisIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */