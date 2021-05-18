package org.jaxen.expr;

import java.util.Iterator;
import java.util.List;
import org.jaxen.util.SingleObjectIterator;
import org.jaxen.util.SingletonList;

public abstract class DefaultExpr implements Expr {
  public static Iterator convertToIterator(Object paramObject) {
    return (Iterator)((paramObject instanceof Iterator) ? paramObject : ((paramObject instanceof List) ? ((List)paramObject).iterator() : new SingleObjectIterator(paramObject)));
  }
  
  public static List convertToList(Object paramObject) {
    return (List)((paramObject instanceof List) ? paramObject : new SingletonList(paramObject));
  }
  
  public Expr simplify() {
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */