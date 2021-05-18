package org.jaxen.expr;

import java.util.Iterator;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.ContextSupport;

public interface Step extends Predicated {
  Iterator axisIterator(Object paramObject, ContextSupport paramContextSupport);
  
  List evaluate(Context paramContext);
  
  int getAxis();
  
  String getText();
  
  boolean matches(Object paramObject, ContextSupport paramContextSupport);
  
  void simplify();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\Step.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */