package org.jaxen.expr.iter;

import java.util.Iterator;
import org.jaxen.ContextSupport;

public class IterableFollowingSiblingAxis extends IterableAxis {
  private static final long serialVersionUID = 4412705219546610009L;
  
  public IterableFollowingSiblingAxis(int paramInt) {
    super(paramInt);
  }
  
  public Iterator iterator(Object paramObject, ContextSupport paramContextSupport) {
    return paramContextSupport.getNavigator().getFollowingSiblingAxisIterator(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\iter\IterableFollowingSiblingAxis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */