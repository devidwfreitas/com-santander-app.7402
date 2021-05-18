package org.jaxen.expr.iter;

import java.util.Iterator;
import org.jaxen.ContextSupport;
import org.jaxen.NamedAccessNavigator;

public class IterableChildAxis extends IterableAxis {
  private static final long serialVersionUID = 1L;
  
  public IterableChildAxis(int paramInt) {
    super(paramInt);
  }
  
  public Iterator iterator(Object paramObject, ContextSupport paramContextSupport) {
    return paramContextSupport.getNavigator().getChildAxisIterator(paramObject);
  }
  
  public Iterator namedAccessIterator(Object paramObject, ContextSupport paramContextSupport, String paramString1, String paramString2, String paramString3) {
    return ((NamedAccessNavigator)paramContextSupport.getNavigator()).getChildAxisIterator(paramObject, paramString1, paramString2, paramString3);
  }
  
  public boolean supportsNamedAccess(ContextSupport paramContextSupport) {
    return paramContextSupport.getNavigator() instanceof NamedAccessNavigator;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\iter\IterableChildAxis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */