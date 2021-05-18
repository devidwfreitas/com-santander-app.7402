package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class RoundFunction implements Function {
  public static Double evaluate(Object paramObject, Navigator paramNavigator) {
    paramObject = NumberFunction.evaluate(paramObject, paramNavigator);
    return (Double)((paramObject.isNaN() || paramObject.isInfinite()) ? paramObject : new Double(Math.round(paramObject.doubleValue())));
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 1)
      return evaluate(paramList.get(0), paramContext.getNavigator()); 
    throw new FunctionCallException("round() requires one argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\RoundFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */