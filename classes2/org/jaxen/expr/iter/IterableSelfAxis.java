package org.jaxen.expr.iter;

import java.util.Iterator;
import org.jaxen.ContextSupport;

public class IterableSelfAxis extends IterableAxis {
  private static final long serialVersionUID = 8292222516706760134L;
  
  public IterableSelfAxis(int paramInt) {
    super(paramInt);
  }
  
  public Iterator iterator(Object paramObject, ContextSupport paramContextSupport) {
    return paramContextSupport.getNavigator().getSelfAxisIterator(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\iter\IterableSelfAxis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */