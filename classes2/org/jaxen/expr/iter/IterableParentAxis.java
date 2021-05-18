package org.jaxen.expr.iter;

import java.util.Iterator;
import org.jaxen.ContextSupport;

public class IterableParentAxis extends IterableAxis {
  private static final long serialVersionUID = -7521574185875636490L;
  
  public IterableParentAxis(int paramInt) {
    super(paramInt);
  }
  
  public Iterator iterator(Object paramObject, ContextSupport paramContextSupport) {
    return paramContextSupport.getNavigator().getParentAxisIterator(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\iter\IterableParentAxis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */