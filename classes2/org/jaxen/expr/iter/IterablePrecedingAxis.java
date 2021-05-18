package org.jaxen.expr.iter;

import java.util.Iterator;
import org.jaxen.ContextSupport;

public class IterablePrecedingAxis extends IterableAxis {
  private static final long serialVersionUID = 587333938258540052L;
  
  public IterablePrecedingAxis(int paramInt) {
    super(paramInt);
  }
  
  public Iterator iterator(Object paramObject, ContextSupport paramContextSupport) {
    return paramContextSupport.getNavigator().getPrecedingAxisIterator(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\iter\IterablePrecedingAxis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */