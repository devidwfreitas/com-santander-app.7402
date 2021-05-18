package org.jaxen.expr.iter;

import java.io.Serializable;
import java.util.Iterator;
import org.jaxen.ContextSupport;

public abstract class IterableAxis implements Serializable {
  private int value;
  
  public IterableAxis(int paramInt) {
    this.value = paramInt;
  }
  
  public abstract Iterator iterator(Object paramObject, ContextSupport paramContextSupport);
  
  public Iterator namedAccessIterator(Object paramObject, ContextSupport paramContextSupport, String paramString1, String paramString2, String paramString3) {
    throw new UnsupportedOperationException("Named access unsupported");
  }
  
  public boolean supportsNamedAccess(ContextSupport paramContextSupport) {
    return false;
  }
  
  public int value() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\iter\IterableAxis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */