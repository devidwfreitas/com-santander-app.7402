package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class SumFunction implements Function {
  public static Double evaluate(Object paramObject, Navigator paramNavigator) {
    double d = 0.0D;
    if (paramObject instanceof List) {
      paramObject = ((List)paramObject).iterator();
      while (paramObject.hasNext())
        d += NumberFunction.evaluate(paramObject.next(), paramNavigator).doubleValue(); 
    } else {
      throw new FunctionCallException("The argument to the sum function must be a node-set");
    } 
    return new Double(d);
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 1)
      return evaluate(paramList.get(0), paramContext.getNavigator()); 
    throw new FunctionCallException("sum() requires one argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\SumFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */