package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class NotFunction implements Function {
  public static Boolean evaluate(Object paramObject, Navigator paramNavigator) {
    return BooleanFunction.evaluate(paramObject, paramNavigator).booleanValue() ? Boolean.FALSE : Boolean.TRUE;
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 1)
      return evaluate(paramList.get(0), paramContext.getNavigator()); 
    throw new FunctionCallException("not() requires one argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\NotFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */