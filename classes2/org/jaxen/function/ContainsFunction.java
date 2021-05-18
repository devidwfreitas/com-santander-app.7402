package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class ContainsFunction implements Function {
  public static Boolean evaluate(Object paramObject1, Object paramObject2, Navigator paramNavigator) {
    return (StringFunction.evaluate(paramObject1, paramNavigator).indexOf(StringFunction.evaluate(paramObject2, paramNavigator)) >= 0) ? Boolean.TRUE : Boolean.FALSE;
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 2)
      return evaluate(paramList.get(0), paramList.get(1), paramContext.getNavigator()); 
    throw new FunctionCallException("contains() requires two arguments.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\ContainsFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */