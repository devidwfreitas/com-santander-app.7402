package org.jaxen.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.jaxen.JaxenConstants;
import org.jaxen.JaxenRuntimeException;
import org.jaxen.Navigator;
import org.jaxen.UnsupportedAxisException;

public class PrecedingAxisIterator implements Iterator {
  private Iterator ancestorOrSelf;
  
  private ListIterator childrenOrSelf;
  
  private Navigator navigator;
  
  private Iterator precedingSibling;
  
  private ArrayList stack;
  
  public PrecedingAxisIterator(Object paramObject, Navigator paramNavigator) {
    this.navigator = paramNavigator;
    this.ancestorOrSelf = paramNavigator.getAncestorOrSelfAxisIterator(paramObject);
    this.precedingSibling = JaxenConstants.EMPTY_ITERATOR;
    this.childrenOrSelf = JaxenConstants.EMPTY_LIST_ITERATOR;
    this.stack = new ArrayList();
  }
  
  private ListIterator childrenOrSelf(Object paramObject) {
    ArrayList<Object> arrayList;
    try {
      arrayList = new ArrayList();
      arrayList.add(paramObject);
      paramObject = this.navigator.getChildAxisIterator(paramObject);
      if (paramObject != null)
        while (paramObject.hasNext())
          arrayList.add(paramObject.next());  
    } catch (UnsupportedAxisException unsupportedAxisException) {
      throw new JaxenRuntimeException(unsupportedAxisException);
    } 
    return arrayList.listIterator(arrayList.size());
  }
  
  public boolean hasNext() {
    while (true) {
      try {
        if (!this.childrenOrSelf.hasPrevious()) {
          if (this.stack.isEmpty()) {
            while (!this.precedingSibling.hasNext()) {
              if (!this.ancestorOrSelf.hasNext())
                return false; 
              this.precedingSibling = new PrecedingSiblingAxisIterator(this.ancestorOrSelf.next(), this.navigator);
            } 
            this.childrenOrSelf = childrenOrSelf(this.precedingSibling.next());
            continue;
          } 
          this.childrenOrSelf = this.stack.remove(this.stack.size() - 1);
          continue;
        } 
      } catch (UnsupportedAxisException unsupportedAxisException) {
        throw new JaxenRuntimeException(unsupportedAxisException);
      } 
      return true;
    } 
  }
  
  public Object next() {
    if (!hasNext())
      throw new NoSuchElementException(); 
    while (true) {
      Object object = this.childrenOrSelf.previous();
      if (this.childrenOrSelf.hasPrevious()) {
        this.stack.add(this.childrenOrSelf);
        this.childrenOrSelf = childrenOrSelf(object);
        continue;
      } 
      return object;
    } 
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxe\\util\PrecedingAxisIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */