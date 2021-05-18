package org.jaxen.util;

import org.jaxen.Navigator;

public class DescendantOrSelfAxisIterator extends DescendantAxisIterator {
  public DescendantOrSelfAxisIterator(Object paramObject, Navigator paramNavigator) {
    super(paramNavigator, new SingleObjectIterator(paramObject));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxe\\util\DescendantOrSelfAxisIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */