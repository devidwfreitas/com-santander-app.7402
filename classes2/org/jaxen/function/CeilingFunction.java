package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class CeilingFunction implements Function {
  public static Double evaluate(Object paramObject, Navigator paramNavigator) {
    return new Double(Math.ceil(NumberFunction.evaluate(paramObject, paramNavigator).doubleValue()));
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 1)
      return evaluate(paramList.get(0), paramContext.getNavigator()); 
    throw new FunctionCallException("ceiling() requires one argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\CeilingFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */